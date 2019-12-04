class CannabisPlant < ApplicationRecord

    belongs_to :user
    belongs_to :grow_room
    has_one :harvest
    has_many :markets, through: :harvest


    def self.completed_cannabis_plants
        where(completed:true)
    end
end
