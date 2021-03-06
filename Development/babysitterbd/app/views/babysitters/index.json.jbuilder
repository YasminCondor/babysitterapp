json.array!(@babysitters) do |babysitter|
  json.extract! babysitter, :id, :name, :lastname, :document, :startdate, :maxcount, :resume, :phone, :email, :password, :district_id
  json.url babysitter_url(babysitter, format: :json)
end
