class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.references :plan, foreign_key: true
      t.references :food, foreign_key: true
      t.integer :grams

      t.timestamps
    end
  end
end
