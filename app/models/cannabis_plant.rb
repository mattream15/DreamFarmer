class CannabisPlant < ApplicationRecord

    belongs_to :user
    belongs_to :grow_room
    has_one :harvest
    has_many :markets, through: :harvest

    accepts_nested_attributes_for :grow_room

    def self.harvested_cannabis_plants
        where(harvested:true)
    end
end
