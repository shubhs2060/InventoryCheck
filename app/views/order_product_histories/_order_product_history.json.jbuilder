json.extract! order_product_history, :id, :quantity, :price, :created_at, :updated_at
json.url order_product_history_url(order_product_history, format: :json)
