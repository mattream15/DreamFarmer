class Market < ApplicationRecord

    belongs_to :harvest

    validates :asking_price, numericality: { only_integer: true }
    validates :amount_for_sale, numericality: { less_than_or_equal_to: @harvest.weight_of_flowers,  only_integer: true }
end
