class MarketsController < ApplicationController
    
    def index
        @markets = Market.all
    end

    def new
        if @harvest = Harvest.find_by(id: params[:harvest_id])
            @market = @harvest.build_market
        else
        @market = Market.new
        end
    end

    def create
        @harvest = Harvest.find_by(id: params[:market][:harvest_id])
        @market = @harvest.build_market(market_params)
        if @market.save
            redirect_to market_path(@market)
        else
            render :new
        end
    end

    def edit
        render :edit
    end

    def show
        @market = Market.find_by_id(params[:id])
        @harvest = @market.harvest
    end

    private

    def market_params
        params.require(:market).permit(:amount_for_sale, :asking_price, :harvest_id)
    end
end
