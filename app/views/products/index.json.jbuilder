json.array!(@products) do |product|
  json.extract! product, :id, :price, :rating, :description, :name
  json.url product_url(product, format: :json)
end
