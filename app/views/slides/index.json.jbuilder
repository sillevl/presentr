json.array!(@slides) do |slide|
  json.extract! slide, :id, :slide_number, :content, :presentation_id
  json.url slide_url(slide, format: :json)
end
