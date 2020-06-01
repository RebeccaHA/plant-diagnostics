class CreateQueries < ActiveRecord::Migration[6.0]
  def change
    create_table :queries do |t|
      t.string :question
      t.string :image_url
      t.integer :user_id
      t.integer :plant_id
      t.timestamps
    end
  end
end
