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

# cont = "The Framework Toolkit is designed to assist NSOs to develop coaching and 
#         officiating frameworks. Sport Australia also conducts regular workshops 
#         with a range of NSOs that have been through the steps, providing the opportunity 
#         to enhance the final product through understanding the experiences of others."
# coach_id_number = User.first.id 
# category_id_number = Category.first.id

# # Program 1
# Program.create(
#     title: "Bike Rider",
#     description: "best way to ride bikes",
#     duration: 10,
#     content: cont,
#     coach_id: coach_id_number,
#     category_id: category_id_number + 3,
#     price: 35
# )

# # Program 2
# Program.create(
#     title: "Arm Wrestler",
#     description: "Beat Everyone",
#     duration: 10,
#     content: cont,
#     coach_id: coach_id_number,
#     category_id: category_id_number,
#     price: 35
# )

# # Program 3
# Program.create(
#     title: "Basketball Hooper",
#     description: "play in the NBA",
#     duration: 10,
#     content: cont,
#     coach_id: coach_id_number + 1,
#     category_id: category_id_number + 1,
#     price: 35
# )

# # Program 4
# Program.create(
#     title: "Splits",
#     description: "Get Flexible",
#     duration: 10,
#     content: cont,
#     coach_id: coach_id_number + 1,
#     category_id: category_id_number + 2,
#     price: 35
# )

# # Program 5
# Program.create(
#     title: "Jogger",
#     description: "work your heart",
#     duration: 10,
#     content: cont,
#     coach_id: coach_id_number + 2 ,
#     category_id: category_id_number + 3,
#     price: 35
# )

# # Program 6
# Program.create(
#     title: "Elliptic",
#     description: "Lose weight",
#     duration: 10,
#     content: cont,
#     coach_id: coach_id_number + 2,
#     category_id: category_id_number + 3,
#     price: 35
# )

# # Program 7
# Program.create(
#     title: "Rowing",
#     description: "Row your boat",
#     duration: 10,
#     content: cont,
#     coach_id: coach_id_number + 3,
#     category_id: category_id_number + 1,
#     price: 35
# )

# # Program 8
# Program.create(
#     title: "Boxing",
#     description: "Become Mike Tyson",
#     duration: 10,
#     content: cont,
#     coach_id: coach_id_number + 3,
#     category_id: category_id_number,
#     price: 35
# )

# # Program 9
# Program.create(
#     title: "Karate",
#     description: "Karate kid ain't got nothing on you",
#     duration: 10,
#     content: cont,
#     coach_id: coach_id_number + 3,
#     category_id: category_id_number,
#     price: 35
# )

# # Program 10
# Program.create(
#     title: "Strecthing",
#     description: "become felxible",
#     duration: 10,
#     content: cont,
#     coach_id: coach_id_number + 4,
#     category_id: category_id_number + 2,
#     price: 35
# )

# # Program 11
# Program.create(
#     title: "Rope Runner",
#     description: "best way to ride bikes",
#     duration: 10,
#     content: cont,
#     coach_id: coach_id_number + 4,
#     category_id: category_id_number + 3,
#     price: 35
# )

# # Program 12
# Program.create(
#     title: "Marathon Runner",
#     description: "Run 50 KM",
#     duration: 10,
#     content: cont,
#     coach_id: coach_id_number + 5,
#     category_id: category_id_number + 1,
#     price: 35
# )