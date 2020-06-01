class Plant < ApplicationRecord
    has_many :queries 
    has_many :users, through: :queries
end
