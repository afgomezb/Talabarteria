json.extract! product, :id, :name, :price, :description, :warranty, :type_leather, :created_at, :updated_at
json.url product_url(product, format: :json)