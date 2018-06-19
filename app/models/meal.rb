class Meal < ApplicationRecord
  belongs_to :plan
  belongs_to :food
  def prots
    Food.find(food_id).prots * ( grams / 100.0 )
  end
  def carbs
    Food.find(food_id).carbs * ( grams / 100.0 )
  end
  def fats
    Food.find(food_id).fats * ( grams / 100.0 )
  end
  def cals
    Food.find(food_id).cals * ( grams / 100.0 )
  end
end
