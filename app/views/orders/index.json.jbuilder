json.array!(@orders) do |order|
  json.extract! order, :id, :comment, :date
  json.url order_url(order, format: :json)
end
