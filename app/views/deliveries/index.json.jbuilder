json.array!(@deliveries) do |delivery|
  json.extract! delivery, :id, :date, :amount, :comments, :instructions
  json.url delivery_url(delivery, format: :json)
end
