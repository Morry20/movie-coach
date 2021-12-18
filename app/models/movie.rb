class Movie < ApplicationRecord
  has_one :coaching
  
  belongs_to :user, :matching
end
