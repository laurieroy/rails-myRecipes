class User < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_person_name

  validates :email, presence: true
  validates :name, presence: true, length: { in: 2..30 }

  has_many :recipes
end
