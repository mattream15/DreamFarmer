class GrowRoomsController < ApplicationController

    def index
        @grow_rooms = GrowRoom.all
    end

    def show
        @grow_room = GrowRoom.find_by(params[:id])
    end
end
