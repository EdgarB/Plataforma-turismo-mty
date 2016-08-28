json.extract! servicios_turistico, :id, :nombre, :foto, :descripcion, :apertura, :clausura, :direccion, :contacto, :lunes, :martes, :miercoles, :jueves, :viernes, :sabado, :domingo, :created_at, :updated_at
json.url servicios_turistico_url(servicios_turistico, format: :json)
