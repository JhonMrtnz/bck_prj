class Parking < ActiveRecord::Base
 # attr_accessible :nombre, :direccion, :correo, :telefono, :movil, :costoxdia, :costoxhora, :distrito_id, :agregado_id, :avatar, :image 

  has_attached_file :avatar
  belongs_to :distrito
  belongs_to :agregado
end
