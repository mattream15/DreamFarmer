class GrowRoomsController < ApplicationController

    def index
        @grow_rooms = GrowRoom.all
    end
    
    def new
        @grow_room = GrowRoom.new
    end

    def create
    end

end
