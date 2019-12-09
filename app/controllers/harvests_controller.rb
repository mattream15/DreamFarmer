class HarvestsController < ApplicationController

    def create
        @cannabis_plant = CannabisPlant.find_by(params[:cannabis_plant_id])
        @harvest = cannabis_plant.harvests.build(weight_of_flowers: rand(1..1500))
        if @cannabis_plant.harvest.save
            redirect_to cannabis_plant_harvest_path(@cannabis_plant, @harvest)
        else
            redirect_to cannabis_plant_path(@cannabis_plant)
        end
    end

    def show
        @harvest = Harvest.find_by_id(params[:id])
    end
end
