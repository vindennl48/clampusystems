class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items
  has_many :packages

  def total
    total = 0.0
    self.order_items.each do |item|
      total += item.quantity * item.unit_price
    end
    self.packages.each do |package|
      total += package.charged
    end
    return total
  end

end
