json.array!(@imagens) do |imagen|
  json.extract! imagen, :id, :description
  json.url imagen_url(imagen, format: :json)
end
