class CannabisPlantsController < ApplicationController

    def index
        if current_user = User.find_by_id(params[:user_id])
        @cannabis_plants = current_user.cannabis_plants.all
        else
            @cannabis_plants = Cannabis_Plant.all
        end
    end

    def new
        if @user = User.find_by_id(params[:user_id])
            @cannabis_plant = @user.cannabis_plants.build
        else
            @cannabis_plant = CannabisPlant.new
        end
    end

    def create
        @cannabis_plant = current_user.cannabis_plants.build(cannabis_plant_params)
        if @cannabis_plant.save
            redirect_to cannabis_plant_path(@cannabis_plant)
        else
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
        params.require(:cannabis_plant).permit(:cannabis_species, :variety_name, :number_of_seeds, :ready_to_harvest,:grow_room_id, grow_room_attributes: [:name, :growing_style, :type_of_soil, :type_of_medium, :nutrients, :ph])
    end
end
