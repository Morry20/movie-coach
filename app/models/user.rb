class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  attachment :image

  belongs_to :sport

  has_many :matchings, dependent: :destroy

  #has_many :messages, dependent: :destroy

  #has_many :movies, dependent: :destroy

  validates :name, presence: true

  enum gender: {unknown:0,  male: 1, female: 2 }

  def self.search(keyword)
    User.joins(:sport).where(["users.name like? OR sports.name like? OR gender like? OR age like? OR introduction like?", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%"])
  end

end
