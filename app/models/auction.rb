class Auction < ApplicationRecord
  belongs_to :user
  has_many :bids


  CATEGORIES = ['gin', 'whisky', 'vodka', 'tequila', 'rum', 'beer', 'wine', 'lager', 'cider', 'craft_beer', 'bitter', 'stout', 'red_wine', 'white_wine', 'sparkling_wine', 'fortified_wine', 'champagne', 'carbonated_soft_drinks']
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :start_price, presence: true, numericality: true
  validates :estimated_volume, presence: true, numericality: true
  validates :contract_length, presence: true

  def add_space(category)
    category.gsub('_', " ")
  end
end
