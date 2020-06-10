class Query < ApplicationRecord
    belongs_to :user
    belongs_to :plant
    has_many :diagnoses
    has_one_attached :image
    accepts_nested_attributes_for :plant
    validates :question, presence: true


    # def plant_name=(name)
    #   self.plant = Plant.find_or_create_by(name: name)
    #   self.save
    # end
  
    # def plant_name 
    #   self.plant ? self.plant.name : nil
    # end

end
