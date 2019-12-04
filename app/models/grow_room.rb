class GrowRoom < ApplicationRecord

    has_many :cannabis_plants
    has_many :users, through: :cannabis_plants
    has_many :harvests, through: :cannabis_plants
    
end
