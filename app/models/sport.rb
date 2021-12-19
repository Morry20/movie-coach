class Sport < ApplicationRecord

  attachment :image

  has_one :user

end
