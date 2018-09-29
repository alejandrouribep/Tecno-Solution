json.extract! product, :id, :name, :cantidad, :price, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
