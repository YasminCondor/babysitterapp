json.array!(@services) do |service|
  json.extract! service, :id, :client_id, :babysitter_id, :schedule_id
  json.url service_url(service, format: :json)
end
