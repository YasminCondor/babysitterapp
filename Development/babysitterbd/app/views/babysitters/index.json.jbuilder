json.array!(@babysitters) do |babysitter|
  json.extract! babysitter, :id, :phonenumber, :firstname, :lastname, :document, :birthdate, :district, :address, :startdate, :resume, :maxcountchildren
  json.url babysitter_url(babysitter, format: :json)
end
