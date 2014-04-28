json.array!(@ujumbes) do |ujumbe|
  json.extract! ujumbe, :id, :title, :theme, :date, :description, :link, :type, :private
  json.url ujumbe_url(ujumbe, format: :json)
end
