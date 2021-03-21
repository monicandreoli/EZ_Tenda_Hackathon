class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home

  end

  def dashboard
    @bids = Bid.all
    @auctions = Auction.all
  end
end
