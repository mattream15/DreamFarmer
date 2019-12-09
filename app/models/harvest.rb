class Harvest < ApplicationRecord

    belongs_to :cannabis_plant
    has_many :markets

    validates :weight_of_flowers, presence: true
    
end
