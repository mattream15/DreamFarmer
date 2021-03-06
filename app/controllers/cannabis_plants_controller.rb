class CannabisPlantsController < ApplicationController

    def index
        if current_user
            @cannabis_plants = current_user.cannabis_plants.all
        else
            @cannabis_plants = CannabisPlant.all
        end
    end

    def new
        @cannabis_plant = CannabisPlant.new
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
        @cannabis_plant = CannabisPlant.find_by(id: params[:id])
        render :edit
    end

    def show
        if @cannabis_plant = CannabisPlant.find_by(id: params[:id])
            @harvest = @cannabis_plant.harvest
        else 
            flash[:error] = "Record not found"
            redirect_to cannabis_plants_path
        end
    end

    private

    def cannabis_plant_params
        params.require(:cannabis_plant).permit(:number_of_seeds, :strain_id, :growing_method_id, :nutrient_id, :ph_id, :light_source_id)
    end
end
