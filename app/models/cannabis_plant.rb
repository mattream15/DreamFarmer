class CannabisPlant < ApplicationRecord

    belongs_to :user
    belongs_to :grow_room
    has_one :harvest
    has_many :markets, through: :harvest


    def self.harvested_cannabis_plants
        where(ready_to_harvest:true)
    end
end
