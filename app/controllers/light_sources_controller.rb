class LightSourcesController < ApplicationController

    def index
        @light_sources = LightSource.all
    end

    def show
        @light_source = LightSource.find_by(id: params[:id])
    end
end
