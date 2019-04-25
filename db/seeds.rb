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
c2 = Car.create(:name => 'CRV', :image => 'https://file.kbb.com/kbb/vehicleimage/evoxseo/xl/11813/2017-honda-cr-v-front-angle3_11813_089_480x360.jpg', :seat => 7,:price => '43000 AUD')
c3 = Car.create(:name => 'Golf', :image => 'https://res.cloudinary.com/carsguide/image/upload/f_auto,fl_lossy,q_auto,t_cg_hero_low/v1/editorial/golf75-png.png', :seat => 5,:price => '27000 AUD')
c4 = Car.create(:name => 'Beetle', :image => 'https://res.cloudinary.com/carsguide/image/upload/f_auto,fl_lossy,q_auto,t_default/v1/editorial/volkswagen-r-line-beetle.jpg', :seat => 4,:price => '45000 AUD')
c5 = Car.create(:name => 'A3', :image => 'https://www.audi.ie/dam/nemo/models/a3/a3-limousine/my-2019/1920-stage/1920x600-AA3_L_161002_1-1920x1080.jpg', :seat => 5,:price => '48000 AUD')
c6 = Car.create(:name => 'Q8', :image => 'https://www.topgear.com/sites/default/files/styles/16x9_1280w/public/cars-car/image/2018/08/audi_q8_vorsprung_093.jpg?itok=i3lvHd3e', :seat => 7,:price => '95000 AUD')
c7 = Car.create(:name => '458', :image => 'https://photos7.motorcar.com/used-2015-ferrari-458_italia-2drconvertible-1769-18567209-3-1024.jpg', :seat => 2,:price => '130,000 AUD')
c8 = Car.create(:name => 'LA Ferrari', :image => 'https://icdn4.digitaltrends.com/image/20170828_150_render_livrea_02a_spyder-720x720.jpg', :seat => 2,:price => '1,500,000 AUD')
c9 = Car.create(:name => '3', :image => 'https://carwow-uk-wp-3.imgix.net/10_Mazda3_5HB_EXT_10-1.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=750', :seat => 5,:price => '36000 AUD')
c10 = Car.create(:name => 'CX-9', :image => 'https://www.mazda.com.au/globalassets/settings/vehicle-assets/cx-9/2018-08---ipm/sport/maz13754_cx-9_sport_jet-black-mica_front_rgb.png', :seat => 7,:price => '67000 AUD')

Review.destroy_all
r1 = Review.create(:rating => 1, :comment => 'Bad car', :username => '123')
r2 = Review.create(:rating => 2, :comment => 'Ok car', :username => '123')
r3 = Review.create(:rating => 3, :comment => 'Average car', :username => '123')
r4 = Review.create(:rating => 4, :comment => 'Good car', :username => '123')
r5 = Review.create(:rating => 5, :comment => ' Must buy car', :username => '123')

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
