class Harvest < ApplicationRecord

    belongs_to :cannabis_plant
    belongs_to :user, through: :cannabis_plant
    belongs_to :grow_rooms, through: :cannabis_plant
    has_many :markets

    validates :weight_of_flowers, presence: true
    validates :weight_of_leaves, presence: true
    validates :weight_of_roots, presence: true
    validates :weight_of_seeds, presence: true
    validates :weight_of_stalks, presence: true

    scope :grouped_market_offers, -> {left_joins(:markets).group(:id).order('created_at: :desc')}
end
