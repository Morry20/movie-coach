class Matching < ApplicationRecord
  has_one :coach_evaluations
  
  has_many :messages, :movies
  
  belongs_to :user
end
