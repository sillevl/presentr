json.array!(@presentations) do |presentation|
  json.extract! presentation, :id, :name, :user
  json.url presentation_url(presentation, format: :json)
end
