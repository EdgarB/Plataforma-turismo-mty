class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :nombre
      t.time :apertura
      t.time :clausura
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
