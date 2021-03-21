class PagesController < ApplicationController
  def home
  end

  def dashboard
    @bids = Bid.all
    @auctions = Auction.all
    @approved_bids = Bid.where(approved: true)
  end
end
