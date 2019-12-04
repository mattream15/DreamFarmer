class Market < ApplicationRecord

    belongs_to :harvest
    belongs_to :cannabis_plant, through: :harvest

end
