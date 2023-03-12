class Tipo < ApplicationRecord
    has_many :calificacions, dependent: :destroy
end
