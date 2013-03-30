class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rate
      t.belongs_to :venue
      t.belongs_to :user
      t.text :comments
      t.belongs_to :meal
      t.datetime :posted

      t.timestamps
    end
    add_index :ratings, :venue_id
    add_index :ratings, :user_id
    add_index :ratings, :meal_id
  end
end
