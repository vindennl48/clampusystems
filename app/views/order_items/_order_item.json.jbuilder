json.extract! order_item, :id, :name, :quantity, :unit_price, :details, :order_id, :created_at, :updated_at
json.url order_item_url(order_item, format: :json)
