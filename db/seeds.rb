User.destroy_all
u1 = User.create :email => 'harsh@gmail.com', :password => '12345'
u2 = User.create :email => 'purvi@ga.co', :password => '12345', :admin => true

Brand.destroy_all
b1 = Brand.create(:name => 'Honda', :image => 'http://www.car-brand-names.com/wp-content/uploads/2015/05/Honda-logotype.png')
b2 = Brand.create(:name => 'Audi', :image => 'http://cartype.com/pics/121/full/audi_new-logo_rings_09.jpg')
b3 = Brand.create(:name => 'VW', :image => 'http://www.carlogos.org/logo/Volkswagen-logo-2015-1920x1080.png')
b4 = Brand.create(:name => 'Ferrari', :image => 'https://worldsportlogos.com/wp-content/uploads/2018/01/Ferrari-logo.png')
b5 = Brand.create(:name => 'Mazda', :image => 'https://images-na.ssl-images-amazon.com/images/I/718vwiv9QlL._SX466_.jpg')

Model.destroy_all
m1 = Model.create(:name => 'Sedan', :size => 'M', :drive => '2WD',:image => 'https://s3.amazonaws.com/peoplepng/wp-content/uploads/2018/10/30165942/Sedan.png')
m2 = Model.create(:name => 'HatchBack', :size => 'S', :drive => '2WD',:image => 'http://freevector.co/wp-content/uploads/2009/02/55308-car-of-hatchback-model.png')
m3 = Model.create(:name => 'SUV', :size => 'L', :drive => '4WD',:image => 'https://cdn4.iconfinder.com/data/icons/car-silhouettes/1000/SUV-512.png')
m4 = Model.create(:name => 'Sports', :size => 'M', :drive => '4WD',:image => 'https://d1yn1kh78jj1rr.cloudfront.net/image/preview/NQgp2HWDx/storyblocks-outline-sport-car-symbol-silhouette-business-company-vector-logo_reI3IBGkz_SB_PM.jpg')


Car.destroy_all
c1 = Car.create(:name => 'Jazz', :image => 'https://auto.ndtvimg.com/car-images/big/honda/jazz/honda-jazz.jpg?v=29', :seat => 5,:price => '21000 AUD')
c2 = Car.create(:name => 'CRV', :image => 'https://di-uploads-pod2.s3.amazonaws.com/middletownhonda/uploads/2015/11/2016-Honda-CR-V-comparison11.jpg', :seat => 7,:price => '43000 AUD')
c3 = Car.create(:name => 'Golf', :image => 'https://res.cloudinary.com/carsguide/image/upload/f_auto,fl_lossy,q_auto,t_cg_hero_low/v1/editorial/golf75-png.png', :seat => 5,:price => '27000 AUD')
c4 = Car.create(:name => 'Beetle', :image => 'https://s.aolcdn.com/dims-global/dims3/GLOB/legacy_thumbnail/788x525/quality/85/https://s.aolcdn.com/commerce/autodata/images/CAC30VWC251A121001.jpg', :seat => 4,:price => '45000 AUD')
c5 = Car.create(:name => 'A3', :image => 'https://images.dealer.com/ddc/vehicles/2019/Audi/A3/Sedan/trim_20T_Premium_0866ec/color/Brilliant%20Black-A2A2-12%2C12%2C12-640-en_US.jpg?impolicy=resize&w=640', :seat => 5,:price => '48000 AUD')
c6 = Car.create(:name => 'Q8', :image => 'https://cars.usnews.com/static/images/Auto/izmo/i106121433/2019_audi_q8_angularfront.jpg', :seat => 7,:price => '95000 AUD')
c7 = Car.create(:name => '458', :image => 'https://s.aolcdn.com/dims-global/dims3/GLOB/legacy_thumbnail/640x400/quality/80/https://s.aolcdn.com/commerce/autodata/images/USC30FRC151A021001.jpg', :seat => 2,:price => '130,000 AUD')
c8 = Car.create(:name => 'LA Ferrari', :image => 'https://media.4rgos.it/i/Argos/5535202_R_Z001A?w=750&h=440&qlt=70', :seat => 2,:price => '1,500,000 AUD')
c9 = Car.create(:name => '3', :image => 'https://images.dealer.com/ddc/vehicles/2018/Mazda/Mazda3/Hatchback/trim_Grand_Touring_0d658b/color/Jet%20Black%20Mica-41W-16%2C16%2C15-640-en_US.jpg', :seat => 5,:price => '36000 AUD')
c10 = Car.create(:name => 'CX-9', :image => 'https://www.mazda.com.au/globalassets/settings/vehicle-assets/cx-9/2018-08---ipm/sport/maz13754_cx-9_sport_jet-black-mica_front_rgb.png', :seat => 7,:price => '67000 AUD')

Review.destroy_all
r1 = Review.create(:rating => 3, :comment => 'Ths is an amzing car with good milage and average. A perferct dream car for the person who is buying first time a new own car. It has lots of new feature and come with variety of colours. Must go and but this car. Discount is on till end of the month. Rush now.', :username => 'Shaun')
r2 = Review.create(:rating => 4, :comment => 'Ths is an amzing car with good milage and average. A perferct dream car for the person who is buying first time a new own car. It has lots of new feature and come with variety of colours. Must go and but this car. Discount is on till end of the month. Rush now.', :username => 'Jenny')
r3 = Review.create(:rating => 3, :comment => 'Ths is an amzing car with good milage and average. A perferct dream car for the person who is buying first time a new own car. It has lots of new feature and come with variety of colours. Must go and but this car. Discount is on till end of the month. Rush now.', :username => 'Ved')
r4 = Review.create(:rating => 4, :comment => 'Ths is an amzing car with good milage and average. A perferct dream car for the person who is buying first time a new own car. It has lots of new feature and come with variety of colours. Must go and but this car. Discount is on till end of the month. Rush now.', :username => 'Ching')
r5 = Review.create(:rating => 5, :comment => 'Ths is an amzing car with good milage and average. A perferct dream car for the person who is buying first time a new own car. It has lots of new feature and come with variety of colours. Must go and but this car. Discount is on till end of the month. Rush now.', :username => 'Laila')

########### Associations ##############
#Brands and Cars
b1.cars << c1 << c2
b2.cars << c5 << c6
b3.cars << c3 << c4
b4.cars << c7 << c8
b5.cars << c9 << c10

#Models and Cars
m1.cars << c5
m2.cars << c1 << c3 << c4 << c9
m3.cars << c2 << c6 << c10
m4.cars << c7 << c8

#Cars and reviews
c1.reviews << r4 << r2 << r3
c2.reviews << r2 << r5
c3.reviews << r5 << r2 << r3
c4.reviews << r4
c5.reviews << r3 << r2
c6.reviews << r5
c7.reviews << r1 << r4 << r3
c8.reviews << r2 << r3
c9.reviews << r5 << r3
c10.reviews << r1 << r2

#REvies and Users
u1.reviews << r1 << r2 << r3 << r4 << r5
u2.reviews << r1 << r2 << r3 << r4 << r5

#models and users Associations
u1.models << m1 << m2 << m3 << m4
u2.models << m1 << m2 << m3 << m4
