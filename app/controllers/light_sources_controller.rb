class LightSourcesController < ApplicationController

    def index
        @light_sources = LightSource.all
    end

    def show
        @cannabis_plant = CannabisPlant.find_by(id: params[:cannabis_plant_id])
        @light_source = LightSource.find_by(id: params[:id])
    end
end
