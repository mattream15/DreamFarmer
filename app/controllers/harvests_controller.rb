class HarvestsController < ApplicationController

    def create
        @cannabis_plant = CannabisPlant.find_by(id: params[:cannabis_plant_id])
        @harvest = @cannabis_plant.build_harvest(weight_of_flowers: (@cannabis_plant.number_of_seeds.to_i * rand(1..1500)))
        if @cannabis_plant.harvest.save
            redirect_to cannabis_plant_harvest_path(@cannabis_plant, @harvest)
        else
            redirect_to cannabis_plant_path(@cannabis_plant)
        end
    end

    def show
        @cannabis_plant = CannabisPlant.find_by(id: params[:cannabis_plant_id])
        @harvest = Harvest.find_by(id: params[:id])
    end
end
