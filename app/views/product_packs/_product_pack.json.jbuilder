json.extract! product_pack, :id, :quantity, :price, :created_at, :updated_at
json.url product_pack_url(product_pack, format: :json)
