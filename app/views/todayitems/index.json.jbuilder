json.array!(@todayitems) do |todayitem|
  json.extract! todayitem, :id, :name, :calorie, :foodimage, :tot_rating, :tot_num, :tdate
  json.url todayitem_url(todayitem, format: :json)
end
