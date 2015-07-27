json.array!(@clients) do |client|
  json.extract! client, :id, :name, :lastname, :phone, :email, :password
  json.url client_url(client, format: :json)
end
