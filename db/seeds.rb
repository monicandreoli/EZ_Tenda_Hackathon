# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing database"
Bid.destroy_all
Auction.destroy_all
User.destroy_all

puts "Generatig Users"
user_1 = User.create!(email: "anthony@gmail.com", password: "123456", role: "Manager")
user_2 = User.create!(email: "billy@gmail.com", password: "123456", role: "Manager")
user_3 = User.create!(email: "andy@gmail.com", password: "123456", role: "Manager")
user_4 = User.create!(email: "james@gmail.com", password: "123456", role: "Manager")
user_5 = User.create!(email: "harriet@gmail.com", password: "123456", role: "Manager")

user_6 = User.create!(email: "marley@gmail.com", password: "123456", role: "Brand")
user_6_image = URI.open("https://www.seekpng.com/png/small/164-1649427_jameson-irish-whisky-delivery-london-jameson-irish-whiskey.png")
user_6.photo.attach(io: user_6_image, filename: "user6.png", content_type: "image/png")

user_7 = User.create!(email: "ben@gmail.com", password: "123456", role: "Brand")
user_7_image = URI.open("https://www.pngkit.com/png/full/638-6387141_gordons-gin-70cl-gordons-gin-png.png")
user_7.photo.attach(io: user_7_image, filename: "user7.png", content_type: "image/png")

user_8 = User.create!(email: "dillan@gmail.com", password: "123456", role: "Brand")
user_8_image = URI.open("https://www.kindpng.com/picc/m/364-3645520_makers-mark-bourbon-1-75-l-hd-png-download.png")
user_8.photo.attach(io: user_8_image, filename: "user8.png", content_type: "image/png")

user_9 = User.create!(email: "ozzy@gmail.com", password: "123456", role: "Brand")
user_9_image = URI.open("https://res-4.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/cbmgpe4rxe08gk5wvoct")
user_9.photo.attach(io: user_9_image, filename: "user9.png", content_type: "image/png")

user_10 = User.create!(email: "sarah@gmail.com", password: "123456", role: "Brand")
user_10_image = URI.open("https://brandslogos.com/wp-content/uploads/thumbs/heineken-logo-vector-2.svg")
user_10.photo.attach(io: user_10_image, filename: "user10.png", content_type: "image/png")

puts "Generating Auctions"
auction_1 = Auction.new(start_price: 300, estimated_volume: 1000, contract_length: "12 Months", category: "whisky", user_id: user_1.id)
auction_1.save!
auction_2 = Auction.new(start_price: 250, estimated_volume: 800, contract_length: "12 Months", category: "gin", user_id: user_1.id)
auction_2.save!
auction_3 = Auction.new(start_price: 700, estimated_volume: 500, contract_length: "12 Months", category: "champagne", user_id: user_1.id)
auction_3.save!
auction_4 = Auction.new(start_price: 225, estimated_volume: 700, contract_length: "12 Months", category: "whisky", user_id: user_1.id)
auction_4.save!
auction_5 = Auction.new(start_price: 100, estimated_volume: 2000, contract_length: "12 Months", category: "craft_beer", user_id: user_1.id)
auction_5.save!


puts "Generating Bids"
# Auction 1
bid_1 = Bid.new(price: 300, perks: "20 glasses and t-shirts", user_id: user_6.id, auction_id: auction_1.id)
bid_1.save!
bid_2 = Bid.new(price: 400, perks: "30 glasses and t-shirts", user_id: user_7.id, auction_id: auction_1.id)
bid_2.save!
bid_3 = Bid.new(price: 325, perks: "10 glasses", user_id: user_8.id, auction_id: auction_1.id)
bid_3.save!
bid_4 = Bid.new(price: 310, perks: "20 glasses + promo posters", user_id: user_9.id, auction_id: auction_1.id)
bid_4.save!
bid_5 = Bid.new(price: 350, perks: "20 glasses and t-shirts", user_id: user_10.id, auction_id: auction_1.id)
bid_5.save!


# Auction 2
bid_6 = Bid.new(price: 300, perks: "20 glasses and t-shirts", user_id: user_6.id, auction_id: auction_2.id)
bid_6.save!
bid_7 = Bid.new(price: 400, perks: "30 glasses and t-shirts", user_id: user_7.id, auction_id: auction_2.id)
bid_7.save!
bid_8 = Bid.new(price: 325, perks: "10 glasses", user_id: user_8.id, auction_id: auction_2.id)
bid_8.save!
bid_9 = Bid.new(price: 310, perks: "20 glasses + promo posters", user_id: user_9.id, auction_id: auction_2.id)
bid_9.save!
bid_10 = Bid.new(price: 350, perks: "20 glasses and t-shirts", user_id: user_10.id, auction_id: auction_2.id)
bid_10.save!


# Auction 3
bid_11 = Bid.new(price: 800, perks: "20 glasses and t-shirts", user_id: user_6.id, auction_id: auction_3.id)
bid_11.save!
bid_12 = Bid.new(price: 900, perks: "30 glasses and t-shirts", user_id: user_7.id, auction_id: auction_3.id)
bid_12.save!
bid_13 = Bid.new(price: 825, perks: "10 glasses", user_id: user_8.id, auction_id: auction_3.id)
bid_13.save!
bid_14 = Bid.new(price: 710, perks: "20 glasses + promo posters", user_id: user_9.id, auction_id: auction_3.id)
bid_14.save!
bid_15 = Bid.new(price: 1050, perks: "20 glasses and t-shirts", user_id: user_10.id, auction_id: auction_3.id)
bid_15.save!


# auction_4
bid_16 = Bid.new(price: 300, perks: "20 glasses and t-shirts", user_id: user_6.id, auction_id: auction_4.id)
bid_16.save!
bid_17 = Bid.new(price: 200, perks: "30 glasses and t-shirts", user_id: user_7.id, auction_id: auction_4.id)
bid_17.save!
bid_18 = Bid.new(price: 425, perks: "10 glasses", user_id: user_8.id, auction_id: auction_4.id)
bid_18.save!
bid_19 = Bid.new(price: 210, perks: "20 glasses + promo posters", user_id: user_9.id, auction_id: auction_4.id)
bid_19.save!
bid_20 = Bid.new(price: 350, perks: "20 glasses and t-shirts", user_id: user_10.id, auction_id: auction_4.id)
bid_20.save!


# auction 5
bid_21 = Bid.new(price: 100, perks: "20 glasses and t-shirts", user_id: user_6.id, auction_id: auction_5.id)
bid_21.save!
bid_22 = Bid.new(price: 120, perks: "30 glasses and t-shirts", user_id: user_7.id, auction_id: auction_5.id)
bid_22.save!
bid_23 = Bid.new(price: 125, perks: "10 glasses", user_id: user_8.id, auction_id: auction_5.id)
bid_23.save!
bid_24 = Bid.new(price: 160, perks: "20 glasses + promo posters", user_id: user_9.id, auction_id: auction_5.id)
bid_24.save!
bid_25 = Bid.new(price: 130, perks: "20 glasses and t-shirts", user_id: user_10.id, auction_id: auction_5.id)
bid_25.save!