class CannabisPlant < ApplicationRecord

    belongs_to :user
    belongs_to :light_source
    belongs_to :strain
    belongs_to :growing_method
    belongs_to :nutrient
    belongs_to :ph
    has_one :harvest
    has_many :markets, through: :harvest

    accepts_nested_attributes_for :light_source

    validates :number_of_seeds, numericality: { only_integer: true }
    
end
