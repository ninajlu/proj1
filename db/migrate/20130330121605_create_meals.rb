class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :type
      t.time :start
      t.time :end
      t.belongs_to :venue
      t.timestamps
    end
  end
end
