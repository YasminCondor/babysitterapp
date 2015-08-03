json.array!(@ratings) do |rating|
  json.extract! rating, :id, :service_id, :value, :type
  json.url rating_url(rating, format: :json)
end
