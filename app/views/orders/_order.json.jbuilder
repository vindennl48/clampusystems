json.extract! order, :id, :process_date, :expected_ship_date, :customer_id, :created_at, :updated_at
json.url order_url(order, format: :json)
