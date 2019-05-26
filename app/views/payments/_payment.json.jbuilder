json.extract! payment, :id, :amount, :fee, :date_due, :is_paid, :date_paid, :payment_type_id, :order_id, :credit_card_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
