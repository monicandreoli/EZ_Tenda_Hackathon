class BidsController < ApplicationController
  before_action :set_bid, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @auction = Auction.find(params[:auction_id])
    @bid = Bid.new
    @bid.auction = @auction
  end
  
  def create
    @auction = Auction.find(params[:auction_id])
    @bid = Bid.new(bid_params)
    @bid.auction = @auction
    @bid.user = current_user
    if @bid.save
      redirect_to auction_path(@auction)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @auction = @bid.auction
    if @bid.update(bid_params)
      redirect_to auction_path(@auction)
    else
      render :edit
    end 
  end

  def approve
    @bid.approved = true
    @bid.declined = false
    respond_to do |format|
      format.js
    end
    @bid.save
  end

  def decline
    @bid.declined = true
    @bid.approved = false
    respond_to do |format|
      format.js
    end
    @bid.save
  end

  private

  def bid_params
    params.require(:bid).permit(:price, :perks, :photo)
  end

  def set_bid
    @bid = Bid.find(params[:id])
  end

end