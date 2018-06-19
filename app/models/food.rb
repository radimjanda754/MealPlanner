class Food < ApplicationRecord
  validates :name, :cals, :presence => true
  validates :prots, :inclusion => 0..100
  validates :carbs, :inclusion => 0..100
  validates :fats, :inclusion => 0..100
end
