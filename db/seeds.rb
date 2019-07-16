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
Category.destroy_all
puts "destroyed"

max = User.create!(email:'max@test.com', password:'testword')
luis = User.create!(email:'luis@test.com', password:'testword')
stan = User.create!(email:'stan@test.com', password:'testword')
bauer = Farm.create!(name: "Bauer Hans", user_id: luis.id)
categories = %w[vegetables fruits berries beans]

categories.each do |category|
  Category.create!(name: category)
end

puts 'Creating 100 vegetables...'
100.times do
  Product.create!(
    title: Faker::Food.vegetables,
    farm_id: bauer.id,
    category: Category.all.sample,
    description: Faker::Food.description,
    price_in_cents: Faker::Number.number(1),
    quantity_in_kg:Faker::Number.number(2),
    min_quantity_to_order: Faker::Number.number(2),
    photo: "https://foodrevolution.org/wp-content/uploads/2019/03/iStock-908062538-1.jpg"
  )
end
puts 'Finished!'
# Product.create(title: "tomatoes", farm_id: bauer.id, description:'This is the most piraty wig of all piraty wigs. You will feel like a badass pirate if you rock this pirating wig.  Happy pirating!', price_in_cents: 4000,  photo: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752188/U36167_bw2g2b.jpg')
# Product.create(title: "something",farm_id: bauer.id, description:'Make yourself the diva you always wanted to be. With this natural feeling look you will rock any party!', price_in_cents: 5000, photo: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752180/42206_oy82g0.jpg')
# Product.create(user_id: luis.id, description:'How often do experts say you should listen to Bob Marley? Reggae-larly. Any other qustions? No? We thought so.', price: 2, color:'black', size:'XL', title: 'Bobbys Bop', remote_photo_url: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752198/29002-rasta-beret-w-real-dreadlocks-1_ertyy0.jpg', address: 'Paul-Heyse-Straße 26, 10407 Berlin')
# Product.create(user_id: max.id, description:'You feel dumb? We have a fix for that. Become the brigtest person in any room with our Albret wig!', price: 50, color:'white', size:'L', title: 'Albert Stein', remote_photo_url: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752198/70796_E_MC2_qqtzi5.jpg', address: 'Karl-Marx-Allee 93A, 10243 Berlin')
# Product.create(user_id: stan.id, description:'Find your inner Pamela with our top notch Pamela Wig! Pamela it all the way.', price: 100, color:'blonde', size:'XS', title: 'Pamela', remote_photo_url: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752198/42225_jcpkpw.jpg', address: 'Marienburger Str. 29, 10405 Berlin')
# Product.create(user_id: stan.id, description:'Its the greatest wig the world has ever seen. All other Wigs are for loosers.', price: 100, color:'blonde', size:'L', title: 'The Greatest Wig', remote_photo_url: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752208/77394-1_bkuhgh.jpg', address: 'Rosenthaler Str. 40-41, 10178 Berlin')
# Wig.create(user_id: louis.id, description:'Feel the flow with Elvis. Chesthair is not inclouded.', price: 35, color:'black', size:'XL', title: 'Elvis', remote_photo_url: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752208/BW071_vb4l3v.jpg')
# Wig.create(user_id: max.id, description:'!!Caution!! You might wake up in Vegas. Vegas Baby!', price: 100000, color:'brown', size:'L', title: 'Hangover', remote_photo_url: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752208/5418-3_urujqj.jpg', address: 'Unter den Linden 10, 10117 Berlin')
# Wig.create(user_id: stan.id, description:'Not as beautiful as Heidi. But still a Heidi.', price: 100000, color:'brown', size:'S', title: 'Heid', remote_photo_url: 'https://res.cloudinary.com/dc875ky15/image/upload/v1562752208/42247_vdqww0.jpg', address: 'Rudi-Dutschke-Straße 26, 10969 Berlin')
