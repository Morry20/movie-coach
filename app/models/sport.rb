class Sport < ApplicationRecord

  attachment :image

  has_many :users

  def self.search(keyword)
    where(["name like?", "%#{keyword}%"])
  end

end
