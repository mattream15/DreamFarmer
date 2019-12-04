class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cannabis_plants
  has_many :grow_rooms, through: :cannabis_plants
  has_many :harvests, through: :cannabis_plants

  validates :email, uniqueness: true
  validates :email, presence: true
  validates :username, uniqueness: true
  validates :username, presence: true
  validates :address, uniqueness: true
  validates :address, presence: true
end
