class Matching < ApplicationRecord
  #has_one :coach_evaluation, dependent: :destroy
  
  #has_many :messages, dependent: :destroy
  #has_many :movies
  
  belongs_to :user
end
