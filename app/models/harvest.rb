class Harvest < ApplicationRecord

    belongs_to :cannabis_plant
    has_one :market

    validates :weight_of_flowers, presence: true
    
end
