class Matching < ApplicationRecord
  #has_one :coach_evaluation, dependent: :destroy

  #has_many :messages, dependent: :destroy
  #has_many :movies

  belongs_to :user

  enum approval: {checking: 0,  approved: 1, impossible: 2}

end
