class CreateMeals < ActiveRecord::Migration
  def change
    drop_table :meals
    create_table :meals do |t|
      t.text :type
      t.time :start
      t.time :end
      t.belongs_to :venue

      t.timestamps
    end
    add_index :meals, :venue_id
  end
end
