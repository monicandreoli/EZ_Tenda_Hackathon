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

puts "Generating Users"
user_1 = User.new(email: "anthony@gmail.com", password: "123456", role: "Manager")
user_1_image = URI.open("https://www.theflyingpigvan.com/wp-content/uploads/2018/04/TFP-LogoFull_Large-1.png")
user_1.photo.attach(io: user_1_image, filename: "user_1_image.png", content_type: "image/png")
user_1.save!

user_2 = User.create!(email: "billy@gmail.com", password: "123456", role: "Manager")
user_3 = User.create!(email: "andy@gmail.com", password: "123456", role: "Manager")
user_4 = User.create!(email: "james@gmail.com", password: "123456", role: "Manager")
user_5 = User.create!(email: "harriet@gmail.com", password: "123456", role: "Manager")

user_6 = User.new(email: "marley@gmail.com", password: "123456", role: "Brand")
user_6_image = URI.open("https://brandslogos.com/wp-content/uploads/images/large/gordons-logo.png")
user_6.photo.attach(io: user_6_image, filename: "user6.png", content_type: "image/png")
user_6.save!

user_7 = User.new(email: "ben@gmail.com", password: "123456", role: "Brand")
user_7_image = URI.open("https://upload.wikimedia.org/wikipedia/en/0/06/Jameson_Irish_Whiskey_logo.png")
user_7.photo.attach(io: user_7_image, filename: "user7.png", content_type: "image/png")
user_7.save!

user_8 = User.new(email: "dillan@gmail.com", password: "123456", role: "Brand")
user_8_image = URI.open("https://www.diageobaracademy.com/uploads/photos/d2ddea18f00665ce8623e36bd4e3c7c5c4e8c9512347f8aa0b5a22ed54c093e19881aa20_medium.jpg")
user_8.photo.attach(io: user_8_image, filename: "user8.png", content_type: "image/png")
user_8.save!

user_9 = User.new(email: "ozzy@gmail.com", password: "123456", role: "Brand")
user_9_image = URI.open("https://p1.hiclipart.com/preview/796/801/215/trophy-ketel-one-vodka-logo-text-signage-banner-line-png-clipart.jpg")
user_9.photo.attach(io: user_9_image, filename: "user9.png", content_type: "image/png")
user_9.save!

user_10 = User.new(email: "sarah@gmail.com", password: "123456", role: "Brand")
user_10_image = URI.open("https://toppng.com/uploads/preview/stella-artois-eps-vector-logo-free-11574044511njqddbhkrt.png")
user_10.photo.attach(io: user_10_image, filename: "user10.png", content_type: "image/png")
user_10.save!

puts "Generating Auctions"
auction_1 = Auction.new(start_price: 300, estimated_volume: 1000, contract_length: "12 Months", category: "whisky", user_id: user_1.id)
auction_1.save!
auction_2 = Auction.new(start_price: 250, estimated_volume: 800, contract_length: "12 Months", category: "gin", user_id: user_1.id)
auction_2.save!
auction_3 = Auction.new(start_price: 700, estimated_volume: 500, contract_length: "12 Months", category: "lager", user_id: user_1.id)
auction_3.save!
auction_4 = Auction.new(start_price: 225, estimated_volume: 700, contract_length: "12 Months", category: "red_wine", user_id: user_1.id)
auction_4.save!
auction_5 = Auction.new(start_price: 100, estimated_volume: 2000, contract_length: "12 Months", category: "craft_beer", user_id: user_1.id)
auction_5.save!


puts "Generating Bids"
# Auction 1
bid_1 = Bid.new(price: 300, perks: "20 glasses and t-shirts", user_id: user_6.id, auction_id: auction_1.id)
bid_1_image = URI.open("https://www.ballantines.com/wp-content/uploads/2020/12/ballantines-finest-bottle.png")
bid_1.photo.attach(io: bid_1_image, filename: "bid_1.png", content_type: "image/png")
bid_1.save!

bid_2 = Bid.new(price: 400, perks: "30 glasses and t-shirts", user_id: user_7.id, auction_id: auction_1.id)
bid_2_image = URI.open("https://www.pngfind.com/pngs/m/75-758262_whisky-jack-daniels-png-jack-daniels-png-transparent.png")
bid_2.photo.attach(io: bid_2_image, filename: "bid_2.png", content_type: "image/png")
bid_2.save!

bid_3 = Bid.new(price: 325, perks: "10 glasses", user_id: user_8.id, auction_id: auction_1.id)
bid_3_image = URI.open("https://www.vhv.rs/dpng/d/612-6123378_makers-mark-hd-png-download.png")
bid_3.photo.attach(io: bid_3_image, filename: "bid_3.png", content_type: "image/png")
bid_3.save!

bid_4 = Bid.new(price: 310, perks: "20 glasses + promo posters", user_id: user_9.id, auction_id: auction_1.id)
bid_4_image = URI.open("https://icon2.cleanpng.com/20180613/ws/kisspng-scotch-whisky-blended-whiskey-single-malt-whisky-c-famous-5b20e686ee3b77.6806651215288828229758.jpg")
bid_4.photo.attach(io: bid_4_image, filename: "bid_4.png", content_type: "image/png")
bid_4.save!

bid_5 = Bid.new(price: 350, perks: "20 glasses and t-shirts", user_id: user_10.id, auction_id: auction_1.id)
bid_5_image = URI.open("https://banner2.cleanpng.com/20180613/hgt/kisspng-scotch-whisky-single-malt-whisky-glenfiddich-speys-glenfiddich-5b2098a742e221.934816271528862887274.jpg")
bid_5.photo.attach(io: bid_5_image, filename: "bid_5.png", content_type: "image/png")
bid_5.save!


# Auction 2
bid_6 = Bid.new(price: 300, perks: "20 glasses and t-shirts", user_id: user_6.id, auction_id: auction_2.id)
bid_6_image = URI.open("https://www.pngitem.com/pimgs/m/27-279869_gordon-s-gin-gordons-gin-hd-png-download.png")
bid_6.photo.attach(io: bid_6_image, filename: "bid_6.png", content_type: "image/png")
bid_6.save!

bid_7 = Bid.new(price: 400, perks: "30 glasses and t-shirts", user_id: user_7.id, auction_id: auction_2.id)
bid_7_image = URI.open("https://www.pikpng.com/pngl/m/408-4081491_bombay-sapphire-gin-70cl-clipart.png")    
bid_7.photo.attach(io: bid_7_image, filename: "bid_7.png", content_type: "image/png")
bid_7.save!

bid_8 = Bid.new(price: 325, perks: "10 glasses", user_id: user_8.id, auction_id: auction_2.id)
bid_8_image = URI.open("https://www.kindpng.com/picc/m/471-4717545_bombay-sapphire-gin-1l-hd-png-download.png")
bid_8.photo.attach(io: bid_8_image, filename: "bid_8.png", content_type: "image/png")
bid_8.save!

bid_9 = Bid.new(price: 310, perks: "20 glasses + promo posters", user_id: user_9.id, auction_id: auction_2.id)
bid_9_image = URI.open("https://www.ginfoundry.com/wp-content/uploads/2013/10/Tanqueray-min.jpg")
bid_9.photo.attach(io: bid_9_image, filename: "bid_9.png", content_type: "image/png")
bid_9.save!

bid_10 = Bid.new(price: 350, perks: "20 glasses and t-shirts", user_id: user_10.id, auction_id: auction_2.id)
bid_10_image = URI.open("https://www.ginfoundry.com/wp-content/uploads/2013/10/Bloom-Bottle-Special-Edition-min.jpg")
bid_10.photo.attach(io: bid_10_image, filename: "bid_10.png", content_type: "image/png")
bid_10.save!


# Auction 3
bid_11 = Bid.new(price: 800, perks: "20 glasses and t-shirts", user_id: user_6.id, auction_id: auction_3.id)
bid_11_image = URI.open("https://www.pngjoy.com/pngm/52/1177389_heineken-heineken-beer-bottles-6-pack-330ml-transparent.png")
bid_11.photo.attach(io: bid_11_image, filename: "bid_11.png", content_type: "image/png")
bid_11.save!

bid_12 = Bid.new(price: 900, perks: "30 glasses and t-shirts", user_id: user_7.id, auction_id: auction_3.id)
bid_12_image = URI.open("https://www.pngkey.com/png/detail/303-3034833_stella-artois.png")
bid_12.photo.attach(io: bid_12_image, filename: "bid_12.png", content_type: "image/png")
bid_12.save!

bid_13 = Bid.new(price: 825, perks: "10 glasses", user_id: user_8.id, auction_id: auction_3.id)
bid_13_image = URI.open("https://www.nicepng.com/png/detail/878-8787534_carlsberg-smooth-draught-bucket.png")
bid_13.photo.attach(io: bid_13_image, filename: "bid_13.png", content_type: "image/png")
bid_13.save!

bid_14 = Bid.new(price: 710, perks: "20 glasses + promo posters", user_id: user_9.id, auction_id: auction_3.id)
bid_14_image = URI.open("https://cdn.readeverything.co/wp-content/uploads/sites/109/2019/04/original-hero.png")
bid_14.photo.attach(io: bid_14_image, filename: "bid_14.png", content_type: "image/png")
bid_14.save!

bid_15 = Bid.new(price: 1050, perks: "20 glasses and t-shirts", user_id: user_10.id, auction_id: auction_3.id)
bid_15_image = URI.open("https://www.nicepng.com/png/detail/257-2575486_fast-wine-liquor-and-beer-delivery-grolsch-premium.png")
bid_15.photo.attach(io: bid_15_image, filename: "bid_15.png", content_type: "image/png")
bid_15.save!


# auction_4
bid_16 = Bid.new(price: 300, perks: "20 glasses and t-shirts", user_id: user_6.id, auction_id: auction_4.id)
bid_16_image = URI.open("https://fronterawines.com/wp-content/uploads/2016/11/en_vr_sweet_red.png")
bid_16.photo.attach(io: bid_16_image, filename: "bid_16.png", content_type: "image/png")
bid_16.save!

bid_17 = Bid.new(price: 200, perks: "30 glasses and t-shirts", user_id: user_7.id, auction_id: auction_4.id)
bid_17_image = URI.open("https://conchaytoro.com/content/uploads/2018/07/cdd-cs-1.png")
bid_17.photo.attach(io: bid_17_image, filename: "bid_17.png", content_type: "image/png")
bid_17.save!

bid_18 = Bid.new(price: 425, perks: "10 glasses", user_id: user_8.id, auction_id: auction_4.id)
bid_18_image = URI.open("https://www.mirassou.com/assets/images/wines/pinot_noir_bottle@2x.png")
bid_18.photo.attach(io: bid_18_image, filename: "bid_18.png", content_type: "image/png")
bid_18.save!

bid_19 = Bid.new(price: 210, perks: "20 glasses + promo posters", user_id: user_9.id, auction_id: auction_4.id)
bid_19_image = URI.open("https://centaurusint.net/images/products/RED1327.png")
bid_19.photo.attach(io: bid_19_image, filename: "bid_19.png", content_type: "image/png")
bid_19.save!

bid_20 = Bid.new(price: 350, perks: "20 glasses and t-shirts", user_id: user_10.id, auction_id: auction_4.id)
bid_20_image = URI.open("http://www.totalwine.com/media/sys_master/twmmedia/h52/hb3/13414285017118.png")
bid_20.photo.attach(io: bid_20_image, filename: "bid_20.png", content_type: "image/png")
bid_20.save!


# auction 5
bid_21 = Bid.new(price: 100, perks: "20 glasses and t-shirts", user_id: user_6.id, auction_id: auction_5.id)
bid_21_image = URI.open("https://cdn-b.william-reed.com/var/wrbm_gb_hospitality/storage/images/9/3/1/7/797139-1-eng-GB/Brewdog-s-annual-report-2016_wrbm_large.png")
bid_21.photo.attach(io: bid_21_image, filename: "bid_21.png", content_type: "image/png")
bid_21.save!

bid_22 = Bid.new(price: 120, perks: "30 glasses and t-shirts", user_id: user_7.id, auction_id: auction_5.id)
bid_22_image = URI.open("https://www.jackblackbeer.com/wp-content/themes/jb-web/assets/img/home/our-beers.png")
bid_22.photo.attach(io: bid_22_image, filename: "bid_22.png", content_type: "image/png")
bid_22.save!

bid_23 = Bid.new(price: 125, perks: "10 glasses", user_id: user_8.id, auction_id: auction_5.id)
bid_23_image = URI.open("https://d1ynl4hb5mx7r8.cloudfront.net/wp-content/uploads/2019/04/23133021/schlafly-lunar-lager-beers.png")
bid_23.photo.attach(io: bid_23_image, filename: "bid_23.png", content_type: "image/png")
bid_23.save!

bid_24 = Bid.new(price: 160, perks: "20 glasses + promo posters", user_id: user_9.id, auction_id: auction_5.id)
bid_24_image = URI.open("https://d1ynl4hb5mx7r8.cloudfront.net/wp-content/uploads/2015/07/Dr.-Jekylls-Organic-Craft-Beer.png")
bid_24.photo.attach(io: bid_24_image, filename: "bid_24.png", content_type: "image/png")
bid_24.save!

bid_25 = Bid.new(price: 130, perks: "20 glasses and t-shirts", user_id: user_10.id, auction_id: auction_5.id)
bid_25_image = URI.open("https://www.firstcraftbeer.com/en/img/beers.png")
bid_25.photo.attach(io: bid_25_image, filename: "bid_25.png", content_type: "image/png")
bid_25.save!