json.array!(@sponsors) do |sponsor|
  json.extract! sponsor, :id, :company_name, :image, :description, :site_url
  json.url sponsor_url(sponsor, format: :json)
end
