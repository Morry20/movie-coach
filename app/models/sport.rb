class Sport < ApplicationRecord
  attachment :image
  belongs_to :user
end
