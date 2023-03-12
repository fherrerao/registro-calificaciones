class User < ApplicationRecord
  has_many :calificacions, dependent: :destroy
  has_many :companias, dependent: :destroy
  has_many :seccions, dependent: :destroy
  has_many :pelotons, dependent: :destroy
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
end
