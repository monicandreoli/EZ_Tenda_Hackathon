class AuctionsController < ApplicationController
  before_action :set_auction, only: %i[show edit update destroy]

  def index
    @auctions = Auction.all
  end

  def show
    @bids = @auction.bids
  end

  def new
    @auction = Auction.new
  end

  def create
    @auction = Auction.create(auction_params)
    @auction.user = current_user
    if @auction.save
      redirect_to auction_path(@auction)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @auction.update(auction_params)
    if @auction.save
      redirect_to auctions_path
    else
      render :edit
    end
  end

  def destroy
    @auction.destroy
    redirect_to auctions_path
  end

  private

  def set_auction
    @auction = Auction.find(params[:id])
  end

  def auction_params
    params.require(:auction).permit(:start_price, :category, :contract_length, :estimated_volume)
  end
end
