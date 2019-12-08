class MarketsController < ApplicationController
    
    def index
        if @harvest = Harvest.find_by_id(params[:harvest_id])
            @markets = @harvest.markets.all
        else
            @market = Market.all
        end
    end

    def new
        if @harvest = Harvest.find_by_id
            (params[:harvest_id])
            @market = @harvest.markets.build

        else
        @market = Market.new
    end

    def create
        current_user.markets.build(market_params)
        if @market.save
            redirect_to market_path(@market)
        else
            render :new
    end

    def edit
        render :edit
    end

    def show
        @market = Market.find_by_id(params[:id])
    end

    private

    def market_params
        params.require(:market).permit(:amount_for_sale, :asking_price, :harvest_id)
    end
end
