class Diagnosis < ApplicationRecord
    belongs_to :user
    belongs_to :query
    validates :comment, presence: true
end
