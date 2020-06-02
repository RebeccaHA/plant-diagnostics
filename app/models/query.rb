class Query < ApplicationRecord
    belongs_to :user
    belongs_to :plant
    has_many :diagnoses
    accepts_nested_attributes_for :plant
end
