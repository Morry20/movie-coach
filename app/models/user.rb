class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  attachment :image
         
  #has_one :sport
  
  has_many :matchings, dependent: :destroy
  
  has_many :messages, dependent: :destroy
  
  has_many :movies, dependent: :destroy
  
end
