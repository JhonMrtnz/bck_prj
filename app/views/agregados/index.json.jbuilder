json.array!(@agregados) do |agregado|
  json.extract! agregado, :id, :descripcion
  json.url agregado_url(agregado, format: :json)
end
