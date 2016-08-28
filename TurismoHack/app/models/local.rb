class Local < ActiveRecord::Base
  validates :nombre, presence:true
  validates :apertura, presence:true
  validates :clausura, presence:true
  validates :descripcion, presence:true
end
