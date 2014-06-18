json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :address1, :address2, :city, :zip_code, :phone_number, :site_url
  json.url venue_url(venue, format: :json)
end
