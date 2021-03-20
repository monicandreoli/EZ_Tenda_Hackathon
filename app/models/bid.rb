class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :auction
  has_one_attached :photo

  validates :price, presence: true, numericality: { only_integer: true }
end
