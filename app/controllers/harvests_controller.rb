class HarvestsController < ApplicationController

    def create
        @harvest.weight_of_flowers = rand(1..1500)
    end

    def show
        @harvest = Harvest.find_by(params[:id])
    end
end
