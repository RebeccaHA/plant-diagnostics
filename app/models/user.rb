class User < ApplicationRecord
    has_many :queries
    has_many :plants, through: :queries
    has_many :diagnoses
    has_secure_password
    
    validates :name, presence: true, uniqueness: true 
    validates :email, presence: true, uniqueness: true

    def self.find_or_create_by_auth(auth)
       self.find_or_create_by(name: auth['info']['name']) do |u|
            u.name = auth['info']['name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex
        end
    end

end
