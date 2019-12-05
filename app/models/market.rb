class Market < ApplicationRecord

    belongs_to :harvest
    belongs_to :cannabis_plant, through: :harvest

    validates :part_of_plant, presence: true
    validates :amount_for_sale, presence: true
    validates :asking_price, presence: true

end
