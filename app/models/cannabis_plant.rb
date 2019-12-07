class CannabisPlant < ApplicationRecord

    belongs_to :user
    belongs_to :grow_room
    has_one :harvest
    has_many :markets, through: :harvest

    accepts_nested_attributes_for :grow_room

    validates :strain, presence: true
    validates :number_of_seeds, presence: true
    validates :growing_method, presence: true
    validates :nutrients, presence: true
    validates :ph, presence: true



    def self.harvested_cannabis_plants
        where(harvested:true)
    end
end
