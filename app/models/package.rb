class Package < ApplicationRecord
  belongs_to :shipping_company
  belongs_to :order
end
