json.array!(@manzanas) do |manzana|
  json.extract! manzana, :id, :nombre
  json.url manzana_url(manzana, format: :json)
end
