class AuctionsController < ApplicationController

  before_action :set_auction, only: %i[show]
  def index
    @auctions = Auction.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_auction
    @auction = Auction.find(params[:id])
  end

  def auction_params
    params.require(:auction).permit(:start_price, :category, :contract_length, :estimated_volume)
  end

end
