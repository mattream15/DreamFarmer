class Harvest < ApplicationRecord

    belongs_to :cannabis_plant
    has_one :market

    validates :weight_of_flowers, presence: true
    

    def self.harvested_cannabis_plants
        order(:weight_of_flowers)
    end
end
