json.array!(@workers) do |worker|
  json.extract! worker, :id, :Name, :Surname, :Email, :Superior, :Phone, :Login
  json.url worker_url(worker, format: :json)
end
