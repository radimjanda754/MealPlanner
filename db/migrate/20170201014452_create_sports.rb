class CreateSports < ActiveRecord::Migration[5.0]
  def change
    create_table :sports do |t|
      t.references :plan, foreign_key: true
      t.references :activity, foreign_key: true
      t.integer :time

      t.timestamps
    end
  end
end
