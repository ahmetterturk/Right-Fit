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

User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: 'user1@email.com',
    password: 'password',
    password_confirmation: 'password'
)

User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: 'user2@email.com',
    password: 'password',
    password_confirmation: 'password'
)

User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: 'user3@email.com',
    password: 'password',
    password_confirmation: 'password'
)

User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: 'user1@email.com',
    password: 'password',
    password_confirmation: 'password'
)

User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: 'user1@email.com',
    password: 'password',
    password_confirmation: 'password'
)

User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: 'user4@email.com',
    password: 'password',
    password_confirmation: 'password'
)

User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: 'user5@email.com',
    password: 'password',
    password_confirmation: 'password'
)

User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: 'user6@email.com',
    password: 'password',
    password_confirmation: 'password'
)

User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: 'user7@email.com',
    password: 'password',
    password_confirmation: 'password'
)

User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: 'user8@email.com',
    password: 'password',
    password_confirmation: 'password'
)

User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: 'user9@email.com',
    password: 'password',
    password_confirmation: 'password'
)

User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: 'user10@email.com',
    password: 'password',
    password_confirmation: 'password'
)
