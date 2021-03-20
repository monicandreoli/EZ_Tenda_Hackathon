class Auction < ApplicationRecord
  belongs_to :user
  has_many :bids


  CATEGORIES = ['gin', 'whisky', 'vodka', 'tequila', 'rum', 'beer', 'wine']
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :start_price, presence: true, numericality: true
  validates :estimated_volume, presence: true, numericality: true
  validates :contract_length, presence: true
end
