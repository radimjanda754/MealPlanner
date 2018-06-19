class Sport < ApplicationRecord
  belongs_to :plan
  belongs_to :activity

  def output
    time * ( 2.7 ) * Activity.find(activity_id).difficult
  end
end
