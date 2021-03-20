class PagesController < ApplicationController
  def home
  end

  def dashboard
    @bids = Bid.all
    @auctions = Auction.all
  end
end
