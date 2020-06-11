class Query < ApplicationRecord
    belongs_to :user
    belongs_to :plant
    has_many :diagnoses
    has_one_attached :image
    accepts_nested_attributes_for :plant
    validates :question, presence: true
end
