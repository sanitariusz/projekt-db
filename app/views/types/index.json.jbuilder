json.array!(@types) do |type|
  json.extract! type, :id, :Name
  json.url type_url(type, format: :json)
end
