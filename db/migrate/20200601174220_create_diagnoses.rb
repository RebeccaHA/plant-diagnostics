class CreateDiagnoses < ActiveRecord::Migration[6.0]
  def change
    create_table :diagnoses do |t|
      t.string :comment
      t.integer :user_id
      t.integer :query_id
      t.timestamps
    end
  end
end
