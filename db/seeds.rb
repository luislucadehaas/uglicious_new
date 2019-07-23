# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "DESTROYing"
puts "destroying Bookings"
Booking.destroy_all
puts "destroying Products"
Product.destroy_all
puts "destroying Farms"
Farm.destroy_all
puts "destroying Companies"
Company.destroy_all
puts "destroying Users"
User.destroy_all
puts "destroying Subgroups"
Subgroup.destroy_all
puts "destroying Categories"
Category.destroy_all

puts "destroyed"

puts "create users"
max = User.create!(
  email:'max@test.com',
  password:'testword',
  role: "farmer",
  first_name: "Max",
  last_name:"Brendle",
  remote_photo_url: "https://res.cloudinary.com/dc875ky15/image/upload/v1563354700/uglicious/famer/max_zjcznz.jpg"
)

luis = User.create!(
  email:'luis@test.com',
  password:'testword',
  role: "farmer",
  first_name: "Luis-Luca",
  last_name:"de Haas",
  remote_photo_url:  "https://res.cloudinary.com/dc875ky15/image/upload/v1563354700/uglicious/famer/luis_zskpks.jpg"
)

  stan = User.create!(
  email:'stan@test.com',
  password:'testword',
  role: "farmer",
  first_name: "Stan",
  last_name:"Levavasseur",
  remote_photo_url: "https://res.cloudinary.com/dc875ky15/image/upload/v1563354700/uglicious/famer/stan_u0cm3k.jpg"
)

max_cust = User.create!(
  email:'maxcust@test.com',
  password:'testword',
  role: "customer",
  first_name: "Max",
  last_name:"Brendle",
  remote_photo_url: "https://res.cloudinary.com/dc875ky15/image/upload/v1563354700/uglicious/famer/max_zjcznz.jpg"
)

luis_cust = User.create!(
  email:'luiscust@test.com',
  password:'testword',
  role: "customer",
  first_name: "Luis-Luca",
  last_name:"de Haas",
  remote_photo_url: "https://res.cloudinary.com/dc875ky15/image/upload/v1563354700/uglicious/famer/max_zjcznz.jpg"
)

stan_cust = User.create!(
  email:'stancust@test.com',
  password:'testword',
  role: "customer",
  first_name: "Stanislaus",
  last_name:"Levavasseur",
  remote_photo_url: "https://res.cloudinary.com/dc875ky15/image/upload/v1563354700/uglicious/famer/max_zjcznz.jpg"
)
puts "users created"

puts "farm creation"
bauer1 = Farm.create!(name: "Robinwood Farm", user_id: luis.id, address:"Bessemerstraße 20, 12103 Berlin", description:"Robinwood Farm is a 25 acre farm nestled in the beautiful and peaceful Berlin.  The focus on this farm is the growing of healthy and flavorful foods while using earth friendly sustainable practices.  In effort to continually reduce a carbon footprint on earth, the farm has a solar system, state-of-the-art water reclamation system, and several compost piles which all assist the organic methods of producing nutritionally rich foods.  We are continuing all those same practices as we grow the business!")
bauer2 = Farm.create!(name: "Lake View Farm", user_id: stan.id, address:"Grünkardinalweg 67, 13129 Berlin", description:"Lake View Farm is a 25 acre farm nestled in the beautiful and peaceful Berlin.  The focus on this farm is the growing of healthy and flavorful foods while using earth friendly sustainable practices.  In effort to continually reduce a carbon footprint on earth, the farm has a solar system, state-of-the-art water reclamation system, and several compost piles which all assist the organic methods of producing nutritionally rich foods.  We are continuing all those same practices as we grow the business!")
bauer3 = Farm.create!(name: "Peaceful Pine Place", user_id: max.id, address:"Kamener Weg 30-50, 13507 Berlin", description:"Peaceful Pine Place is a 25 acre farm nestled in the beautiful and peaceful Berlin.  The focus on this farm is the growing of healthy and flavorful foods while using earth friendly sustainable practices.  In effort to continually reduce a carbon footprint on earth, the farm has a solar system, state-of-the-art water reclamation system, and several compost piles which all assist the organic methods of producing nutritionally rich foods.  We are continuing all those same practices as we grow the business!")

puts "farm created"

puts "company creation"
company1 = Company.create!(name: "University Mensa", user_id: luis_cust.id, address:"Straße zum 17 Juni 20, 12103 Berlin", description:"We provide fresh food to our many thousand students daily.")
company2 = Company.create!(name: "Dr. Ö processed foods", user_id: max_cust.id, address:"Industripark 30-50, 13129 Berlin", description:"Dr. Ö processes fresh foods, prepares meals form them and will sell those freezed to supermarkets.")
company3 = Company.create!(name: "MathildaS Bio Lunchplace", user_id: stan_cust.id, address:"Torstr. 160, 10115 Berlin", description:"The hip and stylish place in the heart of Berlin to have the healthies lunch you could possibly imagine.")

puts "company created"

puts "create categories"
herbs = Category.create!(name: "Herbs")
fruit = Category.create!(name: "Fruits")
vegetable = Category.create!(name: "Vegetables")
greens = Category.create!(name: "Greens")
garlic = Category.create!(name: "Garlic & Onions")
puts "categories created"

puts "create subgroups"
herbgroup = Subgroup.create!(category_id: herbs.id, name: "Herbs")

grapes = Subgroup.create!(name: "Grapes & Cherries",category_id: fruit.id)
stonefruits = Subgroup.create!(name: "Stone Fruits",category_id: fruit.id)
apple = Subgroup.create!(name: "Apple & Pears",category_id: fruit.id)
berries = Subgroup.create!(name: "Berries",category_id: fruit.id)
springfruits = Subgroup.create!(name: "Spring Fruits",category_id: fruit.id)

cucumber = Subgroup.create!(name: "Cucumber",category_id: vegetable.id)
tomatoes = Subgroup.create!(name: "Tomatoes",category_id: vegetable.id)
broccoli = Subgroup.create!(name: "Broccoli & Cauliflower",category_id: vegetable.id)
peppers = Subgroup.create!(name: "Peppers",category_id: vegetable.id)
carrots = Subgroup.create!(name: "Carrots & Celery",category_id: vegetable.id)
squash = Subgroup.create!(name: "Squash",category_id: vegetable.id)
potatoes = Subgroup.create!(name: "Potatoes",category_id: vegetable.id)
corn = Subgroup.create!(name: "Corn & Eggplant",category_id: vegetable.id)

kale = Subgroup.create!(name: "Kale & Spinach", category_id: greens.id)
lettuce = Subgroup.create!(name: "Lettuces & Chicorries", category_id: greens.id)
green = Subgroup.create!(name: "Greens", category_id: greens.id)

garlicgroup = Subgroup.create!(name:"Garlic & Onions",category_id: garlic.id)
puts "categories subgroups"

# puts "create categories"
# categories = %w[vegetables fruits berries beans]
# puts "categories created "
# categories.each do |category|
#   Category.create!(name: category)
# end

puts 'Creating 62 vegetables...'


p1 = Product.create!(
  title: "Organic Persian Cucumbers",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: cucumber.id,
  description: "Soft-skinned Persian Cucumbers are delicious and versatile. Their soft skin makes them sweet and crunchy. Slice them up for salads and sandwiches, or blend them up into a gazpacho.
  When none of the local farms we work with have Organic Persian Cucumbers, we source them from trusted distributors.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.number(1)
  )
p1.remote_photo_url = "https://goodeggs1.imgix.net/product_photos/i8NXRuZ1SGGo2ZnKRajP_2018_0830_PaduaVV_PersianCucumbers_1lbclamshell%20%289e0fec43389142256f5ed177220ebe4d53a5d717%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'
p1.save

p2 = Product.create!(
  title: "Organic Slicer Cucumber",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: cucumber.id,
  description: "Your standard cucumber, great for salads or sandwiches.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p2.remote_photo_url = "https://goodeggs1.imgix.net/product_photos/tHSLOWi6RNCCkJp1ay0y_2018_0416_GoodEggsProduce_Cucumber_1ct%20%28a275ebe926d6697d228d339fdbc6750ff1478f39%29%20%286%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p2.save

p3 =Product.create!(
  title: "Organic Pickling Cucumbers",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: cucumber.id,
  description: "These Organic Pickling Cucumbers are crisp and perfect for their namesake activity. Slice 'em thin or quarter them into spears and then follow your favorite pickling recipe: sweet, spicy, or anywhere in between!",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p3.remote_photo_url ="https://goodeggs2.imgix.net/product_photos/Gby9URIR6K3TdFwa19uA_pickling%20cuke.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p3.save

p4 = Product.create!(
  title: "Mixed Heirloom Tomatoes",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: tomatoes.id,
  description: "These Organic Heirloom Tomatoes from Terra Firma Farm in Winters, CA are perfect for a light caprese salad.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p4.remote_photo_url =  "https://goodeggs1.imgix.net/product_photos/hieMVDLFQgGVLjiB6RLP_2018_0802_LonelyMountainFarm_MixedHeirloomTomatoes_1.5lb%20%28fbb7fdbde5c8482d977db7075dbd94fcc047f03d%29%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p4.save

p5 = Product.create!(
  title: "Saladette Tomatoes",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: tomatoes.id,
  description: "These first-of-the-season Organic Early Girl Tomatoes from Terra Firma Farm in Winters, CA, are firm enough to slice into salads or sandos, but flavorful enough to give you a taste of the first hint of summer.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p5.remote_photo_url =  "https://goodeggs1.imgix.net/product_photos/ANX3TXqTTuJFxQo3ugUL_2017_0705_GenericProduce_SlicerTomatoTrio_v1%20%282924839fdd4c3d695e6559d9084d11bb2f611899%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p5.save

p6 =Product.create!(
  title: "Organic Berkeley Tie-Dye Pink Heirloom Tomatoes",

  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: tomatoes.id,
  description: "Incredibly full of color and flavor, these Organic Berkeley Tie-Dye Heirloom Tomatoes are perfect to add color sliced up on salads or in sandwiches.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p6.remote_photo_url =   "https://goodeggs1.imgix.net/product_photos/zRGN83rQRJOrwOOsm9Ya_2018_0705_TerraFirmaFarm_TieDyeBerkleyHeirloomTomatoes_2%20%286443c17ba8fbd79e72932f650a22e80fb4137b6f%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p6.save
p7 = Product.create!(
  title: "San Marzano Tomatoes",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: tomatoes.id,
  description: "There's nothing quite like making your own tomato sauce from scratch! These San Marzanos from Terra Firma Farm are the perfect sauce tomato you're looking for. Thin-skinned and thick-walled, these Italian plum tomatoes come so fresh, you'd think they came out of your own garden!",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p7.remote_photo_url =   "https://goodeggs1.imgix.net/product_photos/zqZGwpvIS06NGaWVolQr_2018_0830_happyboy_SanMarzanoTomatoes_1lb%20%28a74abcd0aff673ba61b37fd546e6550b58660a8f%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p7.save

p8 =Product.create!(
  title: "Small Cauliflower",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: broccoli.id,
  description: "This beautiful Brassica can be roasted or added to any stir-fry. ",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p8.remote_photo_url =   "https://goodeggs1.imgix.net/product_photos/rhKTfnnlT7eJ4UyM7rb4_2017_1025_GoodEggsProduce_Cauliflower1ct%20%280c7e49cf0cbc61baec07495cf18904aea8abce84%29%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p8.save
p9 = Product.create!(
  title: "Broccoli Crowns",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: broccoli.id,
  description: "All floret, very little stem, these delicious Coke Farm Broccoli Crowns are perfect for roasting, sautéing or a simple steam.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p9.remote_photo_url =    "https://goodeggs2.imgix.net/product_photos/1NanuBLqQNmsUeRUjYTO_2018_1129_GoodEggsProduce_BroccoliCrowns_2lb%20%2806dc5491fd02494bf930e5ed9ec98e1c73ce978d%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p9.save

p10 =Product.create!(
  title: "Broccoli Di Ciccio",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: broccoli.id,
  description: "This delicious Organic Broccoli Di Ciccio from Coke Farm has tiny florets and small leaves with tender stems. Getting a bit of char with a high heat pan gives sweet Brassica a wonderful depth of flavor.
  Please note: Broccoli Di Ciccio can be harvested many different stages of maturity, so it may have more leaves or more florets, but it'll always be delicious!",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p10.remote_photo_url =    "https://goodeggs1.imgix.net/product_photos/9wlJSM1vSBm3YseKlu8h_2018_0507_CokeFarms_BroccoliDiCicco%20%28d822213d2c99234fa19f291ebed182d91392ea1a%29%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p10.save
p11 =Product.create!(
  title: "Small Romanesco",
  farm_id: bauer3.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: broccoli.id,
  description: "This fractal cousin of Cauliflower has a nuttier taste and a nuttier appearance.  Roast it whole, coated with olive oil or cut off individual spirals to add to a roasted veggie mix. Romanesco's bright appearance will make you forget you're ushering in autumn with this Brassica.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p11.remote_photo_url =     "https://goodeggs1.imgix.net/product_photos/cqpisbPsSSCrUs1iTAar_2018_0507_TomateroFarm_RomanescoCauliflower_1head%20%28dfd8e6f5fea7f6cd39da654dc741185b75a85abe%29%20%286%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p11.save
p12 =Product.create!(
  title: "Purple Cauliflower",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: broccoli.id,
  description: "All the same wonderful Brassica taste, now in bolder colors!  Purple (aka Graffiti) Cauliflower can be used any way you would White Cauliflower: mashed, steamed, roasted, crumbled, etc.  The color difference is due to higher levels of the antioxidant anthocyanin, which can be found in many red/purple vegetables and in red wine.  It sometimes has a subtle nutty flavor compared to its more common counterpart, but its main advantage is eye-appeal on the plate.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p12.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/yLTl3kTNQ72J7dSEuNMu_2018_1129_GoodEggsProduce_PurpleCauliflower_1ct%20%2882a59ef1ce4ac163d43706955199061f80697bf4%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p12.save

p13 =Product.create!(
  title: "Nantes Carrots",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: carrots.id,
  description: "Who doesn't love carrots? These sweet, crunchy root veggies can be harvested all year round, and they can be prepared in an endless number of ways. Invaluable for stock, soup, stuffing your turkey, roasting, baking, juicing, mashing, slicing raw, and shredding for carrot cake.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p13.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/qQ9xv7MRJSdeqo8WRXnl_2018_0307_GoodEggsProduce_BunchedCarrots_2bu_1%20%28ed68d6b45987ed887282fc7f29f6f1552553a170%29%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p13.save
p14 =Product.create!(
  title: "Fennel",
  farm_id: bauer3.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: carrots.id,
  description: "Subtly sweet with a hint of licorice, Organic Fennel is great for grilling, roasting or shaving raw.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p14.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/lJionHr5RpClk5suHnbF_2019_0123_TomateroFarm_OrganicFennel_1count_2%20%2813b1c589c05b8799ace454f160f82e5ced987208%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p14.save
p15 =Product.create!(
  title: "Tango Celery",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: carrots.id,
  description: "Firm, juicy stalks with a healthy green sheen have that sweet, potent flavor that make this Tango Celery perfect in any classic preparation. Adding crunch to autumn salads or that elusive background flavor to any soup, we've come to love this old vegetable anew, growing with flavor quality rather than poundage in mind. One medium-sized head.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p15.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/q6sG1pSNKo3IvbsU5ETw_2018_0416_GoodEggsProduce_Celery%20%28a5035c294726786e0ca2a0d82dc61e2524470936%29%20%284%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p15.save
p16 =Product.create!(
  title: "Red Bell Pepper",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: peppers.id,
  description: "Red Bell Peppers are a great addition to any kitchen, as they're versatile and can be added to any dish, cooked or raw. Try charring them on top of the stove and adding to a simple fresh tomato sauce to add sweetness and depth of flavor.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p16.remote_photo_url =     "https://goodeggs1.imgix.net/product_photos/GEQAfF9ETdWHOT3M6IvO_2018_0124_GenericRedBellPeppers_1ct%20%28cba4cbd3932f7b80a0d51ddf0e002cd59c48d965%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p16.save
p17 =Product.create!(
  title: "Orange Bell Pepper",
  farm_id: bauer3.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: peppers.id,
  description: "Orange Bell Peppers add color and crunch to your salad or stir-fry. They are sweet, crisp, and versatile. Try charring them on top of the stove and adding to a simple fresh tomato sauce to add sweetness and depth of flavor.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p17.remote_photo_url =     "https://goodeggs1.imgix.net/product_photos/v9WZB7tgSHq7Nt34q6Pl_2018_0307_GoodEggsProduce_OrangeBellPepper_1ct%20%28a7778effa1e4482ce2510e2b6394c183073f8317%29%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p17.save
p18 =Product.create!(
  title: "Shishito Peppers",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: peppers.id,
  description: "The thinner, glossier, less-spicey cousin of the Pimiento de Padron Pepper, the Shishito is a Japanese frying pepper variety well-suited for a high-heat pan and a pinch of sea salt.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p18.remote_photo_url =     "https://goodeggs1.imgix.net/product_photos/F06p4B9RuqY8szjgf45A_2018_0309_DelCabo_ShishitoPeppers%20%28b7f88472b4638fb199a29b97cd321aa771058b16%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p18.save

p19 =Product.create!(
  title: "Green Bell Pepper",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: peppers.id,
  description: "Harvested when the peppers are on the less mature side to maintain that tangy peppery flavor without being too sweet, these Green Bells are delicious on the grill, flash-fried in a fajita mix, or sliced raw into a salad.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p19.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/APiRjPShShWnanM6pQ1d_2018_0124_GenericGreenBellPeppers_1ct%20%28b73add727be6d1c33d2e22077e15e4aa879f889c%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p19.save
p20 =Product.create!(
  title: "Bi-Color Corn",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: corn.id,
  description: "It wouldn't be summer without sweet corn on the BBQ.or sliced raw into virtually any salad. . . or added fresh into your favorite cornbread recipe. Any way you like it, sweet corn has arrived to kick off the summer season.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p20.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/MnyAggicRyiKkLnSqQ3T_2017_0626_2ctYellowCorn%20%28f877780b28be95b752f6278eb08f13b7703350c3%29%20%282%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p20.save
p21 =Product.create!(
  title: "Globe Eggplant",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: corn.id,
  description: "Slice 'em and grill 'em, or soak 'em and roast 'em, there's no wrong way to enjoy this delicious summertime treat.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p21.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/pvU1hDfTFqy05pQB6H3o_2019_0123_WholesumHarvest_GlobeEggplant_1count%20%28c6b5f3fd92e0bedabc111e6a1b2f2e6dcc20292b%29%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p21.save
p22 =Product.create!(
  title: "Listada Eggplant",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: corn.id,
  description: "These Spanish heirlooms are great all purpose eggplants with a creamy, rich taste and a texture that holds up well to grilling.  Firm and dry, there is no need to salt these beauties to extract excess liquid or bitterness. The best fryers around. Eggplant parm anyone?",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p22.remote_photo_url =     "https://goodeggs1.imgix.net/product_photos/I6O24op4QLKjfYlUfREI_2017_0720_GenericProduce_ListadaEggplant1%23%20%28cb75f2c092e0866de611bf7a791efccde1544c57%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p22.save

p23 =Product.create!(
  title: "Zucchini",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: squash.id,
  description: "The workhorse of the summer squash world, Zucchini can be cooked in many different ways! Some favorites include stuffed zucchini, zucchini bread, and zucchini fries.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p23.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/1Gw3uAlMSZCmCqvueUVH_2017_1221_GoodEggsProduce_GenericZucchini_1ct%20%284c2f0e7f38d00426bbad559eca95b24fbb3a4b88%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p23.save
p24 =Product.create!(
  title: "Yellow Crookneck Squash",
  farm_id: bauer3.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: squash.id,
  description: "Yellow Crookneck is a delicately flavored early variety of summer squash. Chopped up roughly and sautéed with garlic and oil, then topped with some ripped basil, this squash side dish will remind you that summer is just around the corner.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p24.remote_photo_url =      "https://goodeggs2.imgix.net/product_photos/DASTpf24QUWLna1iEmxJ_2018_0522_GoodEggsProduct_YellowCrookneckSquash_1lb%20%28a0ae259fefb1dfb3e807141c878e399536f1ff8d%29%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p24.save
p25 =Product.create!(
  title: "Butternut Squash",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: squash.id,
  description: "Butternut Squash has a nutty flavor and is sweet like a pumpkin. When ripe, the flesh turns increasingly deep orange and becomes sweeter and richer. It has a long shelf life and is a great countertop kitchen staple. Butternut squash pairs well with sage. Caramelize a few sage leaves in butter and drizzle upon roasted, grilled or even baked and mashed squash for an incredible treat.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p25.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/h8BAAHGTVu2cHAQuRIQU_butternut_squash_01%20copy%20%2808818c2c321d2f542cf48d06dfd1eff21f7c46b9%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p25.save

p26 =Product.create!(
  title: "Garnet Sweet Potatoes",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: potatoes.id,
  description: "This classic variety of sweet potato has a burgundy skin and deep orange flesh. Wash them, poke a few holes in them, toss them on a baking sheet, and you'll have a sweet and filling side by the time you've finished prepping the rest of your dinner.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p26.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/KVROhjq7RBis3vO6eERb_2017_1115_GarnetSweetPotato_1lb_1%20%28ca170434b0c3d3a4f8ca4f036ae0ad1c875da661%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p26.save
p27 =Product.create!(
  title: "Baby Red Potatoes",
  farm_id: bauer3.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: potatoes.id,
  description: "With a beautiful white flesh and stunning red skin, these small potatoes are great for boiling or roasting whole.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p27.remote_photo_url =      "https://goodeggs2.imgix.net/product_photos/emThW3VnRiyTJ4DC8Tbi_potatoes_02%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p27.save

p28 =Product.create!(
  title: "Butterball Potatoes",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: potatoes.id,
  description: "Organic German Butterball potatoes are beautiful golden potatoes and the perfect all-around crowd pleaser. They do well with any task they are given, be it frying, steaming, roasting, stewing, grilling or baking.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p28.remote_photo_url =     "https://goodeggs1.imgix.net/product_photos/hYdGuUx9TUtc7ZNy6dAd_L0gelF5RhO55t1AQGvgN_513a83eb11bc26020000d2ef_standard.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p28.save

p29 =Product.create!(
  title: "Yukon Gold Potatoes",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: potatoes.id,
  description: "Yukon Golds are sweet and a bit waxier than your standard Russet mashing potato, so they hold up a bit better in a mash, leaving some chunks to enjoy.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p29.remote_photo_url =     "https://goodeggs1.imgix.net/product_photos/Xmcawew1Sj6BzQ1ENyqZ_2018_0705_RiverdogFarm_YellowPotatoes_1lb%20%282ee96537f8a61496784c8d3e4d2555b89e573f90%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p29.save

p30 = Product.create!(
  title: "Red Ace Beets",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: potatoes.id,
  description: "These classic round Red Ace beets are the heart and soul of every root-lover! So sweet and versatile, perfect in everything from a roasted vegetable mix to freshly juiced with ginger and lemon. 1 bunch, typically 4 individual medium-sized roots (with beautiful greens that are also edible, prepared like Chard)!",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p30.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/sjBrpKTZmYhCsKz2Trwv_sJ7q83rQFaj4EYUCk6Mq_beets_red_bunch_02.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p30.save

p31 = Product.create!(
  title: "Dark Sweet Cherries",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: grapes.id,
  description: "These Organic Dark Sweet Cherries are the perfect treat. Snack on them right out of the bag, or add them to your breakfast or desserts!",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p31.remote_photo_url =     "https://goodeggs1.imgix.net/product_photos/AFlowYnkTG2DiTnjHhoq_2018_0621_GoodEggsProduce_RedCherries_1lb%20%28ac1858973f94731faea89e9447b071685c4c18b4%29%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p31.save

p32 = Product.create!(
  title: "Seedless Green Grapes",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: grapes.id,
  description: "Organic Green Seedless Grapes are a summertime favorite. Kid-friendly as could be (just halve for safe snacking if you have really little ones at the table)! They're great for road trips, picnics, and game day snacks too, or cut them into bunches and set out with cheese and sliced meat for a no-cook dinner that everyone will dig into.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p32.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/wBEI7fTwKAeO3RJJOKCg_2018_0905_FruitWorld_GreenSeedlessGrapes_1lb%20%283b7cc37f96381c01dfcecc853f8f25ee5744ed36%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p32.save

p33 = Product.create!(
  title: "Seedless Red Grapes",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: grapes.id,
  description: "Organic Seedless Red Grapes are a summertime favorite. Kid-friendly as could be (just halve for safe snacking if you have really little ones at the table)! They're great for road trips, picnics, and game day snacks too, or cut them into bunches and set out with cheese and sliced meat for a no-cook dinner that everyone will dig into.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p33.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/f4wGjcabSPyKYUrvSHVr_2018_0628_GoodEggsProduce_GrapesClamshell_1lb%20%282a2dbea1065e351a3995e7c8f12b73fb2b97d7d2%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p33.save

p34 =      Product.create!(
  title: "Rainier Cherries",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: grapes.id,
  description: "Rainier Cherries are here! Sweet and juicy with a hint of acidity that will keep you reaching for more. Brimming with antioxidants and a long list of health benefits, cherries are truly one of nature's best superfoods. Feel free to gorge yourself on a big bowl of these luscious, heart shaped stone fruits. Harvested daily to your table!",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p34.remote_photo_url =      "https://goodeggs1.imgix.net/product_photos/HqsQ8s5TSOCDDArEN6ja_2018_0705_GoodEggsProduce_RainierCherries_1.5lb%20%286952613bd0b8575576406099a943947e99d30c3d%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p34.save

p35 =Product.create!(
  title: "Blueberries",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: berries.id,
  description: "These plump, delicious and organically-grown blueberries were harvested at perfect ripeness. They are perfect as fresh toppings on oatmeals, yogurts, pancakes, waffles or cereal for a nutritious breakfast, and are also great for salads or even baked into muffins!",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p35.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/p0eDbJ6TOLlJDH1WFOwn_blueberries_large%20%285c89d0a190e885880cc18c93ba300a8ca13eac92%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p35.save

p36 = Product.create!(
  title: "Strawberries",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: berries.id,
  description: "These locally-grown Organic Strawberries have a perfect, juicy crunch! They are perfect for snacking, smoothies, and desserts.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p36.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/XtgvLqrVR7WmHm6uVZF4_2019_0103_GoodEggsProduce_OrganicStrawberries_1ct%20%281aae40ca170a4a51b038011e2ce7cc729084e1d1%29%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p36.save

p37 = Product.create!(
  title: "Triple Crown Blackberries",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: berries.id,
  description: "Triple Crown Blackberries are a large, juicy, extremely sweet and flavorful blackberry.  They grow on vigorous thornless bushes and are addictively good.  Great for eating fresh or baking.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p37.remote_photo_url =      "https://goodeggs2.imgix.net/product_photos/P7UUTc6TxCoGUZWKIGmN_2018_0108_GenericBlackberries_1pack%20%28720dc43fbfb58cabad169cafb53836d6b9ea7e2c%29%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p37.save

p38 =Product.create!(
  title: "Elderberries",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: berries.id,
  description: "Often used for its medicinal use, Elderberries' tart flavor is also great for cooking and baking. The berries are inedible when raw, and need to be cooked to be eaten. They can be used to make juice, jams, pies, or even wine.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p38.remote_photo_url =      "https://goodeggs2.imgix.net/product_photos/gieWYzXWToO4BC6Egb3P_jKlQOom7eqI12bivmBjHvwYDjY3bJrRB4wdods78sKI.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p38.save

p39 = Product.create!(
  title: "Flavor Queen Pluot",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: stonefruits.id,
  description: "These Flavor Queen Pluots have a lovely light green skin and a bright, sweet yellow flesh that makes this one of the sweetest pluot variety around. It's apricot aftertaste and plum texture, this juicy stonefruit is one of summer time's favorites.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p39.remote_photo_url =     "https://goodeggs1.imgix.net/product_photos/5Kv0jaSRT7mM2VrTussk_2018_0712_BlossomBluff_FlavorQueenPluot_Trio%20%282a7d394d2981166fac5587d6d2ef0e9f9d9b10fd%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p39.save

p40 = Product.create!(
  title: "Black Cherry Plums",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: stonefruits.id,
  description: "These Black Cherry Plums have a deep black skin with a bright beet-red flesh. They're relatively tart, but they also have all the rich plummy flavor of summertime. Since they're a clingstone variety, they might not slice as neatly as a later-season fruit, but they're perfect for eating out of hand!",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p40.remote_photo_url =      "https://goodeggs1.imgix.net/product_photos/PgiAL7jQNTFvGWbZpMgm_2018_0705_GalpinFamilyFarms_WesternerRedPlums_1lb_2%20%28ab9ed8d816a769b0f91928d26e31228a97f91994%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p40.save

p41 =Product.create!(
  title: "Brittany Gold Apricots",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: stonefruits.id,
  description: "These apricots are large, juicy and have hints of raspberry flavor! Delicious both fresh and in pies & tarts.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p41.remote_photo_url =      "https://goodeggs1.imgix.net/product_photos/C2sEXrm8QY2SgDX2cSNl_2018_0628_FullBellyFarm_RoyalBlenheimApricots_1lb_1%20%288b492c1f9c7f18fec2122a0f9dccaa85ff73a8cb%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p41.save

p42 =Product.create!(
  title: "Summer Sweet White Peach",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: stonefruits.id,
  description: "Smooth, balanced, and lusciously-textured, this peach is a pleaser for those who like a lower acid, fragrant and floral sweetness.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p42.remote_photo_url =      "https://goodeggs1.imgix.net/product_photos/usAyH2kCSfi709AGz2m5_2018_0718_BlossomBluff_WhitePeachDuo%20%284d9b263f1d5d216cbc8e37ffe02417d491e49c5a%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'
p42.save

p43 =Product.create!(
  title: "Granny Smith Apple",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: apple.id,
  description: "Granny Smith Apples are the most classic tart apple. Smooth green skin, crunchy flesh, and balanced tartness make this apple perfect for snacking or baking.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p43.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/eSGumgVZRfm25XGrO8wu_granny%20smith.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p43.save

p44 =Product.create!(
  title: "Cripps Pink Apple",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: apple.id,
  description: "Sweet and crisp, these Organic Cripps Pink Apples are the bounty of Chile's autumn (our summer) harvest. They're a perfect snack for summer camp or a hiking trip. They're the same variety that are sometimes marketed as Pink Lady Apples.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p44.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/mxFB7KSrQNKTDO8FGXCC_2018_0226_GoodEggsProduce_PinkLadyApple_Trio%20%288061c0f5a7a5b506d7aab7705cc7d186e57c0793%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p44.save

p45 =Product.create!(
  title: "Gala Apple",
  farm_id: bauer2.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: apple.id,
  description: "Gala Apples are mildly sweet and easy-eating with a crisp and juicy texture. Their pleasant taste is one that picky eaters prefer which makes them a perfect addition to lunches and snacks for kids. This delicately flavored apple shines in fresh preparations such as salads, fruit salsas and chutneys or as a compliment to slices of cheddar and swiss cheese. Gala Apples bake well and are best when paired with stronger flavored varieties like Gravensteins or Granny Smith.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p45.remote_photo_url =      "https://goodeggs1.imgix.net/product_photos/XtWPQxlRlCk70UA6Drg1_2018_0226_GoodEggsProduce_GalaApple_1ct%20%2847e8e8b2e2d01d3b7bbda274114143daf92bd616%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p45.save

p46 =Product.create!(
  title: "Victoria Rhubarb",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: springfruits.id,
  description: "With their coastal microclimate in Davenport, CA, Swanton Berry Farm is able to grow this beautiful heirloom variety of Rhubarb well into summer. While it may not boast the same fully-red stalk as the more common Crimson variety, Victoria Rhubarb offers a wonderfully tart flavor to any sweet dessert or savory protein dish.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p46.remote_photo_url =     "https://goodeggs1.imgix.net/product_photos/ddaCcqlS2iJ4CIFL4mJQ_rhubarb_01.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p46.save

p47 =Product.create!(
  title: "Lacinato Kale",
  farm_id: bauer3.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: kale.id,
  description: "Lacinato kale has been cultivated for centuries and is a true staple of our kitchens. Also known as dinosaur kale, Italian kale, or cavolo nero, its earthy and slightly bittersweet flavor lends itself perfectly to salads, sautés, soups, casseroles, gratins, and smoothies. Try pairing it with a salty, strong cheese like parmigiano or manchego and a sweet dried fruit for a delicious and nutritious salad that deserves a place on the Thanksgiving table.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p47.remote_photo_url =     "https://goodeggs1.imgix.net/product_photos/e27JSJK5TAS34TAaJbkQ_2018_1119_lacinatokale_1bunch%20%2828b6d7dfcf169e2c6a72e142f52acd71a8cbf72a%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p47.save

p48 =Product.create!(
  title: "Baby Spinach",
  farm_id: bauer3.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: kale.id,
  description: "Tiny and tender, this Organic Baby Spinach from Jayleaf Farms is a perfect for a fresh spinach salad or whizzed into your morning smoothie.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p48.remote_photo_url =      "https://goodeggs1.imgix.net/product_photos/eCtzGme5SDKOSVgaDTQA_2019_0114_JayLeaf_BabySpinach_0.5lb%20copy%20%2808ce9c5ddae19e2ae602c1302d108e41704e8498%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p48.save

p49 =Product.create!(
  title: "Baby Dino Kale",
  farm_id: bauer3.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: kale.id,
  description: "Dino Kale, Lacinato Kale, Tuscan Kale, Cavolo Nero or Blue Kale: whatever you call it, we call it delicious! These tiny leaves are harvested from very young plants, so they are extra tender and sweet. They will cook much more quickly than large kales and are also delicious raw!",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p49.remote_photo_url =      "https://goodeggs2.imgix.net/product_photos/YeQKbLnGQfKWOtyWaOAw_2019_0415_WashedBabyKale_0.25lb%20%2877d54340059966a465502d43979a9e7a63a6c4a8%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p49.save

p50 =Product.create!(
  title: "Redbor Kale",
  farm_id: bauer3.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: kale.id,
  description: "Redbor Kale is a wonderful, sweet kale variety that looks a bit like a cross between the Curly and Red Russian varieties. Use it raw or cooked!",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p50.remote_photo_url =      "https://goodeggs2.imgix.net/product_photos/BnMlb77XRMe5ejeqZJ2n_5157a45f8fa8e902000001b0_standard.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p50.save

p51 =Product.create!(
  title: "Romaine Lettuce",
  farm_id: bauer3.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: lettuce.id,
  description: "Crisp, crunchy and sweet, Organic Romaine Lettuce is perfect for classic Caesar salads or for chopping thinly to add to your next taco bowl.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p51.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/FD7CmJGfRcC2IUGMPPnp_2017_0628_GenericProduce_RomaineLettuce%20%2858f7ca3c68e21e46e922ef85f456b00af33d3a4d%29%20%283%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p51.save

p52 =Product.create!(
  title: "Belgian Endives",
  farm_id: bauer3.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: lettuce.id,
  description: "no matter how you pronounce it, this crunchy, sweet veggie is perfect for boats, or sliced into salads.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p52.remote_photo_url =     "https://goodeggs2.imgix.net/product_photos/WGKbsNNrTEKvNcijfvta_2019_0204_CaliforniaEndiveFarms_BelgianEndive_0.5lb%20%283ec9201a02ff62b7cb5671eb0074c8b602db3b92%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p52.save

p53 =Product.create!(
  title: "Little Gem",
  farm_id: bauer3.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: lettuce.id,
  description: "Beautiful, crunchy and oh-so-sweet, these little gems will brighten up any salad.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p53.remote_photo_url =      "https://goodeggs2.imgix.net/product_photos/TNiTaQ2SN665qvzHIuCg_2018_0514_SayHayFarms_LittleGemLettuces_1lb%20%2882f0c99500d1096ec055739bf42856b795998f80%29%20%282%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p53.save

p54 =Product.create!(
  title: "Rainbow Chard",
  farm_id: bauer3.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: green.id,
  description: "Our organic rainbow chard is especially tender and delicious. Here on the coast just 40 miles south of San Francisco, our climate is uniquely suited to growing world-class organic leafy greens like this chard.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p54.remote_photo_url =      "https://goodeggs2.imgix.net/product_photos/ZnK0V39SThSM3XECpogS_chard_rainbow.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p54.save

p55 =Product.create!(
  title: "Collard Greens",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: green.id,
  description: "These thick, blue-green leaves of Happy Boy Farm's Collard plants are sweet in flavor and chock full of nutrients to boot!",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p55.remote_photo_url =      "https://goodeggs2.imgix.net/product_photos/bSko4x0GQPq3XZuypSrx_2018_1027_HappyBoyFarms_CollardGreens_1bu%20%28283bd29a29644016435c1202cdce4dee790e1a8b%29%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p55.save

p56 =Product.create!(
  title: "Cilantro",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: herbgroup.id,
  description: "Also known as coriander, cilantro is a staple in salsas, guacamole, and ceviche. Try blending it with some garlic and olive oil for a zesty pesto or add whole leaves to your salad for some gourmet flair!",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p56.remote_photo_url =     "https://goodeggs1.imgix.net/product_photos/7ExDMXBZSNeUUmKKiBYn_cilantro_14.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p56.save

p57 =Product.create!(
  title: "Chives",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: herbgroup.id,
  description: "The most delicate member of the allium family, Chives are perfect chopped and used to top omelets or mashed potatoes.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p57.remote_photo_url =      "https://goodeggs1.imgix.net/product_photos/Wsb5nKxOQAeLHTJyeFmT_2019_0319_Ouroboros_AquaponicLivingChives_1bunch%20%28527c5a8e30ea0eb2524dbbce791dbb295b5c858b%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p57.save

p58 =Product.create!(
  title: "Basil",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: herbgroup.id,
  description: "It's full-on basil season! Rip up into a fresh salad, on your next pasta dish, or zap up into some pesto. Store basil outside of the refrigerator: cut the stems and put the basil upright in a jar of water, with a plastic bag covering the leaves.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p58.remote_photo_url =      "https://goodeggs2.imgix.net/product_photos/mqgHb4wJTX2Mn4rYNQFn_2018_0416_TomateroBasil_1bunch%20%2834a1861a128701b49112bc809cdffd91a74dbdc9%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p58.save

p59 =Product.create!(
  title: "Yellow Onion",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: garlicgroup.id,
  description: "Yellow onions are the workhorses of the allium family. With rich flavor and a subtle, aromatic sweetness that increases when cooked, these are one staple you won't want to be without. Dice them for a mirepoix to make broth and soup, quarter them to stuff your turkey, or slice and add them to any roasting pan for an extra boost of flavor. ",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p59.remote_photo_url =      "https://goodeggs2.imgix.net/product_photos/sgL462InSFWI1K1oQyKr_2019_0124_GoodEggsProduce_LargeYellowOnion_1count%20%28cedd6bbcbc3de5ca7b2fd9ec46071e9738227c92%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p59.save

p60 =Product.create!(
  title: "Red Spring Onions",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: garlicgroup.id,
  description: "Spring onions are mild, tender, flavorful, and aromatic. They're edible from bulb to greens, and can be enjoyed raw in salads or as a topping for soups, stews, and more. Try charring them in a cast-iron pan or on the grill with a bit of oil to bring out their sweeter side!",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p60.remote_photo_url =     "https://goodeggs1.imgix.net/product_photos/dWBK0zzT2ebyqOWUgxEB_2019_0501_RedSpringOnions_0.5lb%20%28fde4f2335c0aa50ded6a0c27ec454f875ca2d3e7%29%20%282%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p60.save

p61 =Product.create!(
  title: "Garlic",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: garlicgroup.id,
  description: "It's full-on basil season! Rip up into a fresh salad, on your next pasta dish, or zap up into some pesto. Store basil outside of the refrigerator: cut the stems and put the basil upright in a jar of water, with a plastic bag covering the leaves.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),
  )
p61.remote_photo_url = "https://goodeggs2.imgix.net/product_photos/4Emz1DViRpOdBw8tSFDx_2017_1016_ChristopherRanch_Pre-PackedGarlic_3oz%20%28981865c293d7d06bc6571c44eeab1c0e69a320b0%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'

p61.save

p62 =Product.create!(
  title: "Spring Shallots",
  farm_id: bauer1.id,
  available_from: "2019-07-19",
  available_until: "2019-07-25",
  subgroup_id: garlicgroup.id,
  description: "This sweet and mild allium is a kitchen staple, and its spring version, with greens still attached, are even milder and sweeter. It'll give a mild kick to a raw salad or, if you cut up the bulbs and leave them to soak in your next vinaigrette, they'll add a deliciously sweet crunch.",
  price_in_cents: Faker::Number.between(1, 6),
  quantity_in_kg:Faker::Number.number(2),
  min_quantity_to_order: Faker::Number.between(6, 10),

  )
p62.remote_photo_url = "https://goodeggs1.imgix.net/product_photos/14a5CDpSTAKZE7VDEwVz_2019_0624_CokeFarm_SpringShallots_0.5lb%20%28696aa33a9ced5beef9fafd4ef2acb36718037731%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
printf '.'
p62.save
puts 'Finished!'
# puts 'Creating 100 vegetables...'
# 100.times do
#   Product.create!(
#     title: Faker::Food.vegetables,
#     farm_id: bauer.id,

#     description: Faker::Food.description,
#     price_in_cents: Faker::Number.number(1),
#     quantity_in_kg:Faker::Number.number(2),
#     min_quantity_to_order: Faker::Number.number(2),
#     remote_photo_url:  "https://foodrevolution.org/wp-content/uploads/2019/03/iStock-908062538-1.jpg"
#   )
# endd: stan.id, description:'Not as beautiful as Heidi. But still a Heidi.', price: 100000, color:'brown', size:'S', title: 'Heid', remote_photo_url: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752208/42247_vdqww0.jpg', address: 'Rudi-Dutschke-Straße 26, 10969 Berlin')
