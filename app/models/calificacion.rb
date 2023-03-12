class Calificacion < ApplicationRecord
  belongs_to :user
  belongs_to :tipo
  belongs_to :tipoPrueba
  belongs_to :anio
end
