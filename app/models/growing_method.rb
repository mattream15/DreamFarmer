class GrowingMethod < ApplicationRecord

 has_many :cannabis_plants
    
    validates :name, presence: true

end