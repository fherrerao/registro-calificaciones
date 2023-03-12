class Anio < ApplicationRecord
    has_many :calificacions, dependent: :destroy
end
