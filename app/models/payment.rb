class Payment < ApplicationRecord
  belongs_to :payment_type
  belongs_to :order
  belongs_to :credit_card
end
