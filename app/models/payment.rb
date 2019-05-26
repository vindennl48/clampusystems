class Payment < ApplicationRecord
  belongs_to :payment_type
  belongs_to :order
  belongs_to :credit_card, optional: true
  before_update :set_credit_card

  def get_cards
    result = [["None", nil]]

    self.order.customer.credit_cards.each do |card|
      result.push([
        "...#{card.number.to_s[-4..-1]}",
        card.id,
      ])
    end

    return result
  end

  def set_credit_card
    if self.payment_type_id != 4
      self.credit_card_id = nil
    end
  end

end
