class CreateAgregados < ActiveRecord::Migration
  def change
    create_table :agregados do |t|
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
