# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "DESTROYing"
Product.destroy_all
Farm.destroy_all
User.destroy_all
Subgroup.destroy_all
Category.destroy_all

puts "destroyed"

puts "create users"
max = User.create!(email:'max@test.com', password:'testword', role: "farmer", first_name: "Max", last_name:"Brendle", photo:"https://res.cloudinary.com/dc875ky15/image/upload/v1563354700/uglicious/famer/max_zjcznz.jpg")
luis = User.create!(email:'luis@test.com', password:'testword', role: "farmer", first_name: "Luis-Luca", last_name:"de Haas", photo: "https://res.cloudinary.com/dc875ky15/image/upload/v1563354700/uglicious/famer/luis_zskpks.jpg")
stan = User.create!(email:'stan@test.com', password:'testword', role: "farmer", first_name: "Stanislav", last_name:"Levasseur", photo:"https://res.cloudinary.com/dc875ky15/image/upload/v1563354700/uglicious/famer/stan_u0cm3k.jpg")
puts "users created"

puts "farm creation"
bauer1 = Farm.create!(name: "Robinwood Farm", user_id: luis.id, address:"Bessemerstraße 20, 12103 Berlin", description:"Robinwood Farm is a 25 acre farm nestled in the beautiful and peaceful Berlin.  The focus on this farm is the growing of healthy and flavorful foods while using earth friendly sustainable practices.  In effort to continually reduce a carbon footprint on earth, the farm has a solar system, state-of-the-art water reclamation system, and several compost piles which all assist the organic methods of producing nutritionally rich foods.  We are continuing all those same practices as we grow the business!")
bauer2 = Farm.create!(name: "Lake View Farm", user_id: stan.id, address:"Grünkardinalweg 67, 13129 Berlin", description:"Lake View Farm is a 25 acre farm nestled in the beautiful and peaceful Berlin.  The focus on this farm is the growing of healthy and flavorful foods while using earth friendly sustainable practices.  In effort to continually reduce a carbon footprint on earth, the farm has a solar system, state-of-the-art water reclamation system, and several compost piles which all assist the organic methods of producing nutritionally rich foods.  We are continuing all those same practices as we grow the business!")
bauer3 = Farm.create!(name: "Peaceful Pine Place", user_id: max.id, address:"Kamener Weg 30-50, 13507 Berlin", description:"Peaceful Pine Place is a 25 acre farm nestled in the beautiful and peaceful Berlin.  The focus on this farm is the growing of healthy and flavorful foods while using earth friendly sustainable practices.  In effort to continually reduce a carbon footprint on earth, the farm has a solar system, state-of-the-art water reclamation system, and several compost piles which all assist the organic methods of producing nutritionally rich foods.  We are continuing all those same practices as we grow the business!")

puts "farm created"

puts "create categories"
herbs = Category.create!(name: "Herbs")
fruit = Category.create!(name: "Fruits")
vegetable = Category.create!(name: "Vegetables")
greens = Category.create!(name: "Greens")
garlic = Category.create!(name: "Garlic & Onions")
puts "categories created"

puts "create subgroups"
herbgroup = Subgroup.create!(category_id: herbs.id)

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
squash = Subgroup.create!(name: "squash",category_id: vegetable.id)
potatoes = Subgroup.create!(name: "Potatoes",category_id: vegetable.id)
corn = Subgroup.create!(name: "Corn & Eggplant",category_id: vegetable.id)

kale = Subgroup.create!(name: "Kale & Spinach", category_id: greens.id)
lettuce = Subgroup.create!(name: "Lettuces & Chicorries", category_id: greens.id)
green = Subgroup.create!(name: "Greens", category_id: greens.id)

garlicgroup = Subgroup.create!(category_id: garlic.id)
puts "categories subgroups"

# puts "create categories"
# categories = %w[vegetables fruits berries beans]
# puts "categories created "
# categories.each do |category|
#   Category.create!(name: category)
# end

puts 'Creating 40 vegetables...'


Product.create!(
    title: "Organic Persian Cucumbers",
    farm_id: bauer1.id,
    subgroup_id: cucumber.id,
    description: "Soft-skinned Persian Cucumbers are delicious and versatile. Their soft skin makes them sweet and crunchy. Slice them up for salads and sandwiches, or blend them up into a gazpacho.
When none of the local farms we work with have Organic Persian Cucumbers, we source them from trusted distributors.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs1.imgix.net/product_photos/i8NXRuZ1SGGo2ZnKRajP_2018_0830_PaduaVV_PersianCucumbers_1lbclamshell%20%289e0fec43389142256f5ed177220ebe4d53a5d717%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Organic Slicer Cucumber",
    farm_id: bauer1.id,
    subgroup_id: cucumber.id,
    description: "Your standard cucumber, great for salads or sandwiches.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs1.imgix.net/product_photos/tHSLOWi6RNCCkJp1ay0y_2018_0416_GoodEggsProduce_Cucumber_1ct%20%28a275ebe926d6697d228d339fdbc6750ff1478f39%29%20%286%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Organic Pickling Cucumbers",
    farm_id: bauer1.id,
    subgroup_id: cucumber.id,
    description: "These Organic Pickling Cucumbers are crisp and perfect for their namesake activity. Slice 'em thin or quarter them into spears and then follow your favorite pickling recipe: sweet, spicy, or anywhere in between!",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs2.imgix.net/product_photos/Gby9URIR6K3TdFwa19uA_pickling%20cuke.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Mixed Heirloom Tomatoes",
    farm_id: bauer1.id,
    subgroup_id: tomatoes.id,
    description: "These Organic Heirloom Tomatoes from Terra Firma Farm in Winters, CA are perfect for a light caprese salad.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs1.imgix.net/product_photos/hieMVDLFQgGVLjiB6RLP_2018_0802_LonelyMountainFarm_MixedHeirloomTomatoes_1.5lb%20%28fbb7fdbde5c8482d977db7075dbd94fcc047f03d%29%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )


Product.create!(
    title: "Saladette Tomatoes",
    farm_id: bauer1.id,
    subgroup_id: tomatoes.id,
    description: "These first-of-the-season Organic Early Girl Tomatoes from Terra Firma Farm in Winters, CA, are firm enough to slice into salads or sandos, but flavorful enough to give you a taste of the first hint of summer.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs1.imgix.net/product_photos/ANX3TXqTTuJFxQo3ugUL_2017_0705_GenericProduce_SlicerTomatoTrio_v1%20%282924839fdd4c3d695e6559d9084d11bb2f611899%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )


Product.create!(
    title: "Organic Berkeley Tie-Dye Pink Heirloom Tomatoes",
    farm_id: bauer1.id,
    subgroup_id: tomatoes.id,
    description: "Incredibly full of color and flavor, these Organic Berkeley Tie-Dye Heirloom Tomatoes are perfect to add color sliced up on salads or in sandwiches.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs1.imgix.net/product_photos/zRGN83rQRJOrwOOsm9Ya_2018_0705_TerraFirmaFarm_TieDyeBerkleyHeirloomTomatoes_2%20%286443c17ba8fbd79e72932f650a22e80fb4137b6f%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "San Marzano Tomatoes",
    farm_id: bauer1.id,
    subgroup_id: tomatoes.id,
    description: "There's nothing quite like making your own tomato sauce from scratch! These San Marzanos from Terra Firma Farm are the perfect sauce tomato you're looking for. Thin-skinned and thick-walled, these Italian plum tomatoes come so fresh, you'd think they came out of your own garden!",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs1.imgix.net/product_photos/zRGN83rQRJOrwOOsm9Ya_2018_0705_TerraFirmaFarm_TieDyeBerkleyHeirloomTomatoes_2%20%286443c17ba8fbd79e72932f650a22e80fb4137b6f%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )


Product.create!(
    title: "Small Cauliflower",
    farm_id: bauer1.id,
    subgroup_id: broccoli.id,
    description: "This beautiful Brassica can be roasted or added to any stir-fry. ",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs1.imgix.net/product_photos/rhKTfnnlT7eJ4UyM7rb4_2017_1025_GoodEggsProduce_Cauliflower1ct%20%280c7e49cf0cbc61baec07495cf18904aea8abce84%29%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Broccoli Crowns",
    farm_id: bauer1.id,
    subgroup_id: broccoli.id,
    description: "All floret, very little stem, these delicious Coke Farm Broccoli Crowns are perfect for roasting, sautéing or a simple steam.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs2.imgix.net/product_photos/1NanuBLqQNmsUeRUjYTO_2018_1129_GoodEggsProduce_BroccoliCrowns_2lb%20%2806dc5491fd02494bf930e5ed9ec98e1c73ce978d%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )


Product.create!(
    title: "Broccoli Di Ciccio",
    farm_id: bauer1.id,
    subgroup_id: broccoli.id,
    description: "This delicious Organic Broccoli Di Ciccio from Coke Farm has tiny florets and small leaves with tender stems. Getting a bit of char with a high heat pan gives sweet Brassica a wonderful depth of flavor.
Please note: Broccoli Di Ciccio can be harvested many different stages of maturity, so it may have more leaves or more florets, but it'll always be delicious!",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs1.imgix.net/product_photos/9wlJSM1vSBm3YseKlu8h_2018_0507_CokeFarms_BroccoliDiCicco%20%28d822213d2c99234fa19f291ebed182d91392ea1a%29%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Small Romanesco",
    farm_id: bauer1.id,
    subgroup_id: broccoli.id,
    description: "This fractal cousin of Cauliflower has a nuttier taste and a nuttier appearance.  Roast it whole, coated with olive oil or cut off individual spirals to add to a roasted veggie mix. Romanesco's bright appearance will make you forget you're ushering in autumn with this Brassica.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs1.imgix.net/product_photos/cqpisbPsSSCrUs1iTAar_2018_0507_TomateroFarm_RomanescoCauliflower_1head%20%28dfd8e6f5fea7f6cd39da654dc741185b75a85abe%29%20%286%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Purple Cauliflower",
    farm_id: bauer1.id,
    subgroup_id: broccoli.id,
    description: "All the same wonderful Brassica taste, now in bolder colors!  Purple (aka Graffiti) Cauliflower can be used any way you would White Cauliflower: mashed, steamed, roasted, crumbled, etc.  The color difference is due to higher levels of the antioxidant anthocyanin, which can be found in many red/purple vegetables and in red wine.  It sometimes has a subtle nutty flavor compared to its more common counterpart, but its main advantage is eye-appeal on the plate.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs2.imgix.net/product_photos/yLTl3kTNQ72J7dSEuNMu_2018_1129_GoodEggsProduce_PurpleCauliflower_1ct%20%2882a59ef1ce4ac163d43706955199061f80697bf4%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Nantes Carrots",
    farm_id: bauer1.id,
    subgroup_id: carrots.id,
    description: "Who doesn't love carrots? These sweet, crunchy root veggies can be harvested all year round, and they can be prepared in an endless number of ways. Invaluable for stock, soup, stuffing your turkey, roasting, baking, juicing, mashing, slicing raw, and shredding for carrot cake.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs2.imgix.net/product_photos/qQ9xv7MRJSdeqo8WRXnl_2018_0307_GoodEggsProduce_BunchedCarrots_2bu_1%20%28ed68d6b45987ed887282fc7f29f6f1552553a170%29%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Fennel",
    farm_id: bauer1.id,
    subgroup_id: carrots.id,
    description: "Subtly sweet with a hint of licorice, Organic Fennel is great for grilling, roasting or shaving raw.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs2.imgix.net/product_photos/lJionHr5RpClk5suHnbF_2019_0123_TomateroFarm_OrganicFennel_1count_2%20%2813b1c589c05b8799ace454f160f82e5ced987208%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Tango Celery",
    farm_id: bauer1.id,
    subgroup_id: carrots.id,
    description: "Firm, juicy stalks with a healthy green sheen have that sweet, potent flavor that make this Tango Celery perfect in any classic preparation. Adding crunch to autumn salads or that elusive background flavor to any soup, we've come to love this old vegetable anew, growing with flavor quality rather than poundage in mind. One medium-sized head.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs2.imgix.net/product_photos/q6sG1pSNKo3IvbsU5ETw_2018_0416_GoodEggsProduce_Celery%20%28a5035c294726786e0ca2a0d82dc61e2524470936%29%20%284%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Red Bell Pepper",
    farm_id: bauer1.id,
    subgroup_id: peppers.id,
    description: "Red Bell Peppers are a great addition to any kitchen, as they're versatile and can be added to any dish, cooked or raw. Try charring them on top of the stove and adding to a simple fresh tomato sauce to add sweetness and depth of flavor.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs1.imgix.net/product_photos/GEQAfF9ETdWHOT3M6IvO_2018_0124_GenericRedBellPeppers_1ct%20%28cba4cbd3932f7b80a0d51ddf0e002cd59c48d965%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Orange Bell Pepper",
    farm_id: bauer1.id,
    subgroup_id: peppers.id,
    description: "Orange Bell Peppers add color and crunch to your salad or stir-fry. They are sweet, crisp, and versatile. Try charring them on top of the stove and adding to a simple fresh tomato sauce to add sweetness and depth of flavor.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs1.imgix.net/product_photos/v9WZB7tgSHq7Nt34q6Pl_2018_0307_GoodEggsProduce_OrangeBellPepper_1ct%20%28a7778effa1e4482ce2510e2b6394c183073f8317%29%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Shishito Peppers",
    farm_id: bauer1.id,
    subgroup_id: peppers.id,
    description: "The thinner, glossier, less-spicey cousin of the Pimiento de Padron Pepper, the Shishito is a Japanese frying pepper variety well-suited for a high-heat pan and a pinch of sea salt.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs1.imgix.net/product_photos/F06p4B9RuqY8szjgf45A_2018_0309_DelCabo_ShishitoPeppers%20%28b7f88472b4638fb199a29b97cd321aa771058b16%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )


Product.create!(
    title: "Green Bell Pepper",
    farm_id: bauer1.id,
    subgroup_id: peppers.id,
    description: "Harvested when the peppers are on the less mature side to maintain that tangy peppery flavor without being too sweet, these Green Bells are delicious on the grill, flash-fried in a fajita mix, or sliced raw into a salad.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs2.imgix.net/product_photos/APiRjPShShWnanM6pQ1d_2018_0124_GenericGreenBellPeppers_1ct%20%28b73add727be6d1c33d2e22077e15e4aa879f889c%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Bi-Color Corn",
    farm_id: bauer1.id,
    subgroup_id: corn.id,
    description: "It wouldn't be summer without sweet corn on the BBQ.or sliced raw into virtually any salad. . . or added fresh into your favorite cornbread recipe. Any way you like it, sweet corn has arrived to kick off the summer season.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs2.imgix.net/product_photos/MnyAggicRyiKkLnSqQ3T_2017_0626_2ctYellowCorn%20%28f877780b28be95b752f6278eb08f13b7703350c3%29%20%282%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Globe Eggplant",
    farm_id: bauer1.id,
    subgroup_id: corn.id,
    description: "Slice 'em and grill 'em, or soak 'em and roast 'em, there's no wrong way to enjoy this delicious summertime treat.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs2.imgix.net/product_photos/pvU1hDfTFqy05pQB6H3o_2019_0123_WholesumHarvest_GlobeEggplant_1count%20%28c6b5f3fd92e0bedabc111e6a1b2f2e6dcc20292b%29%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Listada Eggplant",
    farm_id: bauer1.id,
    subgroup_id: corn.id,
    description: "These Spanish heirlooms are great all purpose eggplants with a creamy, rich taste and a texture that holds up well to grilling.  Firm and dry, there is no need to salt these beauties to extract excess liquid or bitterness. The best fryers around. Eggplant parm anyone?",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs1.imgix.net/product_photos/I6O24op4QLKjfYlUfREI_2017_0720_GenericProduce_ListadaEggplant1%23%20%28cb75f2c092e0866de611bf7a791efccde1544c57%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )


Product.create!(
    title: "Zucchini",
    farm_id: bauer1.id,
    subgroup_id: squash.id,
    description: "The workhorse of the summer squash world, Zucchini can be cooked in many different ways! Some favorites include stuffed zucchini, zucchini bread, and zucchini fries.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs2.imgix.net/product_photos/1Gw3uAlMSZCmCqvueUVH_2017_1221_GoodEggsProduce_GenericZucchini_1ct%20%284c2f0e7f38d00426bbad559eca95b24fbb3a4b88%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Yellow Crookneck Squash",
    farm_id: bauer1.id,
    subgroup_id: squash.id,
    description: "Yellow Crookneck is a delicately flavored early variety of summer squash. Chopped up roughly and sautéed with garlic and oil, then topped with some ripped basil, this squash side dish will remind you that summer is just around the corner.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs2.imgix.net/product_photos/DASTpf24QUWLna1iEmxJ_2018_0522_GoodEggsProduct_YellowCrookneckSquash_1lb%20%28a0ae259fefb1dfb3e807141c878e399536f1ff8d%29%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Butternut Squash",
    farm_id: bauer1.id,
    subgroup_id: squash.id,
    description: "Butternut Squash has a nutty flavor and is sweet like a pumpkin. When ripe, the flesh turns increasingly deep orange and becomes sweeter and richer. It has a long shelf life and is a great countertop kitchen staple. Butternut squash pairs well with sage. Caramelize a few sage leaves in butter and drizzle upon roasted, grilled or even baked and mashed squash for an incredible treat.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs2.imgix.net/product_photos/h8BAAHGTVu2cHAQuRIQU_butternut_squash_01%20copy%20%2808818c2c321d2f542cf48d06dfd1eff21f7c46b9%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Garnet Sweet Potatoes",
    farm_id: bauer1.id,
    subgroup_id: potatoes.id,
    description: "This classic variety of sweet potato has a burgundy skin and deep orange flesh. Wash them, poke a few holes in them, toss them on a baking sheet, and you'll have a sweet and filling side by the time you've finished prepping the rest of your dinner.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs2.imgix.net/product_photos/KVROhjq7RBis3vO6eERb_2017_1115_GarnetSweetPotato_1lb_1%20%28ca170434b0c3d3a4f8ca4f036ae0ad1c875da661%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

Product.create!(
    title: "Baby Red Potatoes",
    farm_id: bauer1.id,
    subgroup_id: potatoes.id,
    description: "With a beautiful white flesh and stunning red skin, these small potatoes are great for boiling or roasting whole.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs2.imgix.net/product_photos/emThW3VnRiyTJ4DC8Tbi_potatoes_02%20%281%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )


Product.create!(
    title: "Butterball Potatoes",
    farm_id: bauer1.id,
    subgroup_id: potatoes.id,
    description: "Organic German Butterball potatoes are beautiful golden potatoes and the perfect all-around crowd pleaser. They do well with any task they are given, be it frying, steaming, roasting, stewing, grilling or baking.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs1.imgix.net/product_photos/hYdGuUx9TUtc7ZNy6dAd_L0gelF5RhO55t1AQGvgN_513a83eb11bc26020000d2ef_standard.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )

  Product.create!(
    title: "Yukon Gold Potatoes",
    farm_id: bauer1.id,
    subgroup_id: potatoes.id,
    description: "Yukon Golds are sweet and a bit waxier than your standard Russet mashing potato, so they hold up a bit better in a mash, leaving some chunks to enjoy.",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs1.imgix.net/product_photos/Xmcawew1Sj6BzQ1ENyqZ_2018_0705_RiverdogFarm_YellowPotatoes_1lb%20%282ee96537f8a61496784c8d3e4d2555b89e573f90%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )


    Product.create!(
    title: "Red Ace Beets",
    farm_id: bauer1.id,
    subgroup_id: potatoes.id,
    description: "These classic round Red Ace beets are the heart and soul of every root-lover! So sweet and versatile, perfect in everything from a roasted vegetable mix to freshly juiced with ginger and lemon. 1 bunch, typically 4 individual medium-sized roots (with beautiful greens that are also edible, prepared like Chard)!",
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://goodeggs2.imgix.net/product_photos/sjBrpKTZmYhCsKz2Trwv_sJ7q83rQFaj4EYUCk6Mq_beets_red_bunch_02.jpg?w=840&h=525&fm=jpg&q=80&fit=crop"
  )
puts 'Finished!'

# puts 'Creating 100 vegetables...'
# 100.times do
#   Product.create!(
#     title: Faker::Food.vegetables,
#     farm_id: bauer.id,
#     category: Category.all.sample,
#     description: Faker::Food.description,
#     price_in_cents: Faker::Number.number(1),
#     quantity_in_kg:Faker::Number.number(2),
#     min_quantity_to_order: Faker::Number.number(2),
#     photo: "https://foodrevolution.org/wp-content/uploads/2019/03/iStock-908062538-1.jpg"
#   )
# end
# puts 'Finished!'
# Product.create(title: "tomatoes", farm_id: bauer.id, description:'This is the most piraty wig of all piraty wigs. You will feel like a badass pirate if you rock this pirating wig.  Happy pirating!', price_in_cents: 4000,  photo: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752188/U36167_bw2g2b.jpg')
# Product.create(title: "something",farm_id: bauer.id, description:'Make yourself the diva you always wanted to be. With this natural feeling look you will rock any party!', price_in_cents: 5000, photo: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752180/42206_oy82g0.jpg')
# Product.create(user_id: luis.id, description:'How often do experts say you should listen to Bob Marley? Reggae-larly. Any other qustions? No? We thought so.', price: 2, color:'black', size:'XL', title: 'Bobbys Bop', remote_photo_url: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752198/29002-rasta-beret-w-real-dreadlocks-1_ertyy0.jpg', address: 'Paul-Heyse-Straße 26, 10407 Berlin')
# Product.create(user_id: max.id, description:'You feel dumb? We have a fix for that. Become the brigtest person in any room with our Albret wig!', price: 50, color:'white', size:'L', title: 'Albert Stein', remote_photo_url: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752198/70796_E_MC2_qqtzi5.jpg', address: 'Karl-Marx-Allee 93A, 10243 Berlin')
# Product.create(user_id: stan.id, description:'Find your inner Pamela with our top notch Pamela Wig! Pamela it all the way.', price: 100, color:'blonde', size:'XS', title: 'Pamela', remote_photo_url: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752198/42225_jcpkpw.jpg', address: 'Marienburger Str. 29, 10405 Berlin')
# Product.create(user_id: stan.id, description:'Its the greatest wig the world has ever seen. All other Wigs are for loosers.', price: 100, color:'blonde', size:'L', title: 'The Greatest Wig', remote_photo_url: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752208/77394-1_bkuhgh.jpg', address: 'Rosenthaler Str. 40-41, 10178 Berlin')
# Wig.create(user_id: louis.id, description:'Feel the flow with Elvis. Chesthair is not inclouded.', price: 35, color:'black', size:'XL', title: 'Elvis', remote_photo_url: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752208/BW071_vb4l3v.jpg')
# Wig.create(user_id: max.id, description:'!!Caution!! You might wake up in Vegas. Vegas Baby!', price: 100000, color:'brown', size:'L', title: 'Hangover', remote_photo_url: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752208/5418-3_urujqj.jpg', address: 'Unter den Linden 10, 10117 Berlin')
# Wig.create(user_id: stan.id, description:'Not as beautiful as Heidi. But still a Heidi.', price: 100000, color:'brown', size:'S', title: 'Heid', remote_photo_url: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752208/42247_vdqww0.jpg', address: 'Rudi-Dutschke-Straße 26, 10969 Berlin')
