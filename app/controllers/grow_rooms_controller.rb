class GrowRoomsController < ApplicationController

    def index
        @grow_rooms = GrowRoom.all
    end
    
    def new
        @grow_room = GrowRoom.new
    end

    def create
        @grow_room = GrowRoom.new(grow_room_params)
        @grow_room.user = current_user
        if @grow_room.save
            redirect_to grow_room_path
        else
            render :new
    end

    def edit
        render :edit
    end

    def show
        @grow_room = GrowRoom.find_by(params[:id])
    end

    private

    def grow_room_params
        params.require(:grow_room).permit(:name, :growing_style, :type_of_soil, :type_of_medium, :nutrients, :ph, :type_of_light, :room_temperature, :relative_humidity)
    end
end
