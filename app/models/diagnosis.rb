class Diagnosis < ApplicationRecord
    belongs_to :user
    belongs_to :query
    validates :comment, presence: true
    scope :best_diagnoses, -> (query_id) {where('query_id = ?', query_id).order(upvote: :desc)}
end
