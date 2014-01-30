json.array!(@admittances) do |admittance|
  json.extract! admittance, :id, :access_to, :description
  json.url admittance_url(admittance, format: :json)
end
