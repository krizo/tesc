json.array!(@products) do |product|
  json.extract! product, :id, :name, :depth, :width, :length, :producer
  json.url product_url(product, format: :json)
end
