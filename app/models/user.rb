class User < ApplicationRecord
    has_many :queries
    has_many :plants, through: :queries
    has_many :diagnosis
    has_secure_password
end
