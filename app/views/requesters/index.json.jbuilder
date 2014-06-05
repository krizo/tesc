json.array!(@requesters) do |requester|
  json.extract! requester, :id, :name, :street, :zip_code, :city, :logo_image_name
  json.url requester_url(requester, format: :json)
end
