class CannabisPlant < ApplicationRecord

    def self.completed_cannabis_plants
        where(completed:true)
    end
end
