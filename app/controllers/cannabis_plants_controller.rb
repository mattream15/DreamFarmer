class CannabisPlantsController < ApplicationController

    def index
        @cannabis_plants = CannabisPlant.all
    end

    def new
        @cannabis_plant = CannabisPlant.new
        @cannabis_plant.build_grow_room
    end

    def create
        @cannabis_plant = CannabisPlant.new(cannabis_plant_params)
        @cannabis_plant.user = current_user
        if @cannabis_plant.save
            redirect_to cannabis_plant_path
        else
            @cannabis_plant.build_grow_room
            render :new
        end
    end

    def edit
        render :edit
    end

    def show
        @cannabis_plant = CannabisPlant.find_by(params[:id])
    end

    private

    def cannabis_plant_params
        params.require(:cannabis_plant).permit(:cannabis_species, :variety_name, :number_of_seeds, :ready_to_harvest, :grow_room_id, grow_room_attributes: [:name, :growing_style, :nutrients, :ph])
    end
end
