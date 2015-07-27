json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :title, :date, :state, :babysitter_id
  json.url schedule_url(schedule, format: :json)
end
