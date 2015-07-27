json.array!(@babysitters) do |babysitter|
  json.extract! babysitter, :id, :name, :lastname, :document, :startdate, :maxcount, :resume, :phone, :email, :password
  json.url babysitter_url(babysitter, format: :json)
end
