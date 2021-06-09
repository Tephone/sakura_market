json.extract! product, :id, :name, :price, :description, :visible, :position, :created_at, :updated_at
json.url product_url(product, format: :json)
