json.array!(@speakers) do |speaker|
  json.extract! speaker, :id, :first_name, :last_name, :suffix, :company_name, :title, :bio, :img, :twitter, :email
  json.url speaker_url(speaker, format: :json)
end
