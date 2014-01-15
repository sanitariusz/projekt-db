json.array!(@hardwares) do |hardware|
  json.extract! hardware, :id, :Name, :Serial, :Type
  json.url hardware_url(hardware, format: :json)
end
