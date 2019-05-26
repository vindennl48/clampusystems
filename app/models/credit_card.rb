class CreditCard < ApplicationRecord
  belongs_to :customer
  has_many :payments
end
