class Plan < ApplicationRecord
  validates :name, :description, :presence => true
  def meals
    Meal.where(plan_id: id)
  end
  def sports
    Sport.where(plan_id: id)
  end
  def prots
    totalcount = 0
    meals.each { |x|
      totalcount += x.prots
    }
    totalcount
  end
  def carbs
    totalcount = 0
    meals.each { |x|
      totalcount += x.carbs
    }
    totalcount
  end
  def fats
    totalcount = 0
    meals.each { |x|
      totalcount += x.fats
    }
    totalcount
  end
  def cals
    totalcount = 0
    meals.each { |x|
      totalcount += x.cals
    }
    totalcount
  end
  def output
    totalcount = 0
    sports.each { |x|
      totalcount += x.output
    }
    totalcount
  end
  def basicoutput
    1700
  end
end
