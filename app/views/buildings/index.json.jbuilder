json.array!(@buildings) do |building|
  json.extract! building, :id, :name, :investor, :adress, :city, :zip
  json.url building_url(building, format: :json)
end
