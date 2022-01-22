class Movie < ApplicationRecord
  has_one_attached :movie

  has_one :coaching, dependent: :destroy

  belongs_to :user

  belongs_to :matching

  has_many :messages

end
