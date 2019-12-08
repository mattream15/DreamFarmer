class LightSource < ApplicationRecord

    has_many :cannabis_plants
    has_many :users, through: :cannabis_plants
    has_many :harvests, through: :cannabis_plants
    
    validates :name, presence: true

end
