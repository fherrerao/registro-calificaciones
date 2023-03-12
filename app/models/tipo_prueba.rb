class TipoPrueba < ApplicationRecord
    has_many :calificacions, dependent: :destroy
end
