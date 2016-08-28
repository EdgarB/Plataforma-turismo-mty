class CreateServiciosPublicos < ActiveRecord::Migration
  def change
    create_table :servicios_publicos do |t|
      t.string :nombre
      t.string :foto
      t.text :descripcion
      t.time :apertura
      t.time :clausura
      t.string :direccion
      t.string :contacto
      t.boolean :lunes
      t.boolean :martes
      t.boolean :miercoles
      t.boolean :jueves
      t.boolean :viernes
      t.boolean :sabado
      t.boolean :domingo

      t.timestamps null: false
    end
  end
end
