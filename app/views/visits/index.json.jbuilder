json.array!(@visits) do |visit|
  json.extract! visit, :id, :visitdate
  json.days do
  	json.since visit.days_since
  end
  json.user do
    json.name visit.user.realname
  end
  json.store do
    json.name visit.store.to_s
  end
end