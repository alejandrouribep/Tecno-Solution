json.extract! factura, :id, :user_id, :clients_id, :products_id, :services_id, :fecha, :price, :details, :created_at, :updated_at
json.url factura_url(factura, format: :json)
