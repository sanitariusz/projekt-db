json.array!(@softwares) do |software|
  json.extract! software, :id, :name, :license, :buy_date, :purpose
  json.url software_url(software, format: :json)
end
