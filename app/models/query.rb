class Query < ApplicationRecord
    belongs_to :user
    belongs_to :plant
    has_many :diagnoses
end
