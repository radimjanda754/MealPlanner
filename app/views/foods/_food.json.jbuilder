json.extract! food, :id, :name, :prots, :carbs, :fats, :cals, :created_at, :updated_at
json.url food_url(food, format: :json)