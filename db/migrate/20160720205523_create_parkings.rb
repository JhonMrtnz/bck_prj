class CreateParkings < ActiveRecord::Migration
  def change
    create_table :parkings do |t|
      t.string :nombre
      t.string :direccion
      t.string :correo
      t.string :telefono
      t.string :movil
      t.float :costoxdia
      t.float :costoxhora
      t.references :distrito, index: true, foreign_key: true
      t.references :agregado, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_attachment :parkings, :image
  end
end
