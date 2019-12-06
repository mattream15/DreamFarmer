class HarvestsController < ApplicationController

    def create
        #random number generator in the create method
        #use harvested flag on the plant itself for that plant that is being saved
        #check to see if plant that is going to be harvested hasn't been harvested yet
    end

    def show
        @harvest = Harvest.find_by(params[:id])
    end

    def market_offers
        @harvest = Harvest.grouped_market_offers
    end
end
