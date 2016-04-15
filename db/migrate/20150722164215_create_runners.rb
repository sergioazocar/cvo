class CreateRunners < ActiveRecord::Migration
  def change
    create_table :runners do |t|
      t.string :rut
      t.string :nombre
      t.string :apellidos
      t.integer :edad
      t.string :club
      t.string :ciudad
      t.string :pais
      t.string :correo
      t.string :telefono
      t.string :tipo_corredor
      t.string :alergico
      t.boolean :declaracion
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
