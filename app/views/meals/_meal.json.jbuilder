json.extract! meal, :id, :plan_id, :food_id, :grams, :created_at, :updated_at
json.url meal_url(meal, format: :json)