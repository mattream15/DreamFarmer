class GrowRoom < ApplicationRecord

    has_many :cannabis_plants
    has_many :users, through: :cannabis_plants
    has_many :harvests, through: :cannabis_plants
    

    validates :name, uniqueness: true
    validates :growing_style, presence: true
    validates :nutrients, presence: true
    validates :ph, presence: true

end
