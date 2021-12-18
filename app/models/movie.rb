class Movie < ApplicationRecord
  has_one :coaching, dependent: :destroy
  
  belongs_to :user
  
  belongs_to :matching
end
