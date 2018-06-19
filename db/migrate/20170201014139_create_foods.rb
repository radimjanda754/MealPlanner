class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :prots
      t.integer :carbs
      t.integer :fats
      t.integer :cals

      t.timestamps
    end
  end
end
