json.array!(@domains) do |domain|
  json.extract! domain, :id, :Name, :Adress, :Expiration, :Responsible
  json.url domain_url(domain, format: :json)
end
