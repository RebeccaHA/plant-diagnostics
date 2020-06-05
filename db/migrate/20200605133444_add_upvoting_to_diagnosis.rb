class AddUpvotingToDiagnosis < ActiveRecord::Migration[6.0]
  def change
    add_column :diagnoses, :upvote, :integer
  end
end
