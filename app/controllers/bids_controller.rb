class BidsController < ApplicationController
  before_action :set_bid, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @bid = Bid.new
  end

  def create
    @auction = Auction.find(params[:auction_id])
    @bid = Bid.new(bid_params)
    @bid.auction = @auction
    if @bid.save
      redirect_to auction_path(@auction)
    else
      render :new
  end

  def edit
  end

  def update
    @bid.update(bid_params)
    @auction = @bid.auction
    redirect_to auction_path(@auction)
  end

  private

  def bid_params
    params.require(:bid).permit(:price, :perks)
  end

  def set_bid
    @bid = Bid.find(params[:id])
  end

end
