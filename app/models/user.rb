class User < ApplicationRecord
    has_many :queries
    has_many :plants, through: :queries
    has_many :diagnoses
    has_secure_password
    validates :password, presence: true
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true

end
