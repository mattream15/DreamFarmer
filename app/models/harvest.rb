class Harvest < ApplicationRecord

    belongs_to :cannabis_plant
    belongs_to :user, through: :cannabis_plant
    belongs_to :grow_rooms, through: :cannabis_plant
    has_many :markets

end
