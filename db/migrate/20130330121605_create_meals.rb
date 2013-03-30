class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :type
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
