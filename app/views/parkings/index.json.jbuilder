json.array!(@parkings) do |parking|
  json.extract! parking, :id, :nombre, :direccion, :correo, :telefono, :movil, :costoxdia, :costoxhora, :distrito_id, :agregado_id, :image
  json.url parking_url(parking, format: :json)
end
