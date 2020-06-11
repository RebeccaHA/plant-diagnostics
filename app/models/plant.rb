class Plant < ApplicationRecord
    has_many :queries 
    has_many :users, through: :queries
    validates :name, presence: true

    def self.search(parameter)
        self.where("lower(name) LIKE :search", search: "%#{parameter}%")  
    end
end
