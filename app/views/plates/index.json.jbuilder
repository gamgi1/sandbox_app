json.array!(@plates) do |plate|
  json.extract! plate, :id, :name, :calories
  json.url plate_url(plate, format: :json)
end
