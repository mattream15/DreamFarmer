class Market < ApplicationRecord

    belongs_to :harvest

    validates :asking_price, numericality: { only_integer: true }

    def validate(amount_for_sale)
        unless amount_for_sale.to_i <= @harvest.weight_of_flowers.to_i
            amount_for_sale.errors[:name] << 'Amount for sale cannot be greater than weight of flowers from harvest'
        end
    end
end
