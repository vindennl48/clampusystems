json.extract! credit_card, :id, :number, :security, :exp_date, :name, :customer_id, :created_at, :updated_at
json.url credit_card_url(credit_card, format: :json)
