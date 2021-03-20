class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :auction

  validates :price, presence: true, numericality: { only_integer: true }

end
