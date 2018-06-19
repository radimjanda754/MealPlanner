class Activity < ApplicationRecord
  validates :name, :presence => true
  validates :difficult, :inclusion => 1..10
end
