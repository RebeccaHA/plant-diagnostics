class Query < ApplicationRecord
    belongs_to :user
    belongs_to :plant
    has_many :diagnoses
    accepts_nested_attributes_for :plant

    def plant_name=(name)
      self.plant = Plant.find_or_create_by(name: name)
      self.save
    end
  
    def plant_name 
      self.plant ? self.plant.name : nil
    end

end
