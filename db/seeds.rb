# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


categories = ["Strength Training", "Endurance Training", "Flexibility and Mobility Training", "Cardiovascular Training"]
categories.each do |training|
    Category.create(category_name: training)
end


# 10.times do |i|
#     User.create(
#         first_name: Faker::Name.first_name,
#         last_name: Faker::Name.last_name,
#         email: Faker::Internet.email(domain: 'email'),
#         password: 'password',
#         password_confirmation: 'password'
#     )
#     puts "created user #{i}"
# end
