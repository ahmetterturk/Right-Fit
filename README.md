# RightFit

## R9-A link (URL) to your deployed app (i.e. website)
[RightFit Deployed Website](https://rightfit-rails.herokuapp.com)

## R10-A link to your GitHub repository (repo).
[RightFit Github Repository](https://github.com/ahmetterturk/RightFit)


## R7-Identification of the problem you are trying to solve by building this particular marketplace app.
Physical activity and exercise are proven to be crucial for the quality of life that we live. Exercise not only impacts our body, but it also helps us with a healthier state of mind. Some of the physical benefits of exercise and fitness include reduced risk of heart attacks, lower blood cholesterol levels, reduced risk of type 2 diabetes and gives the person control of their weight preventing obesity. The mental benefits of exercise include blocking out negative thoughts, distraction you from daily stress, provides opportunity for social contact when exercising with others, increased lift in mood, improved sleeping patterns and also exercise changes the levels of chemicals in the brain that such as serotonin, endorphins and stress hormones.  

A crucial nuance of doing exercise and fitness activities is to maintain consistancy and transform it into a life style. How many of us, in some part of our lives were determined to make the change and improve our overall life quality? Have started exercising, or signed up to gym, or started a team sport and was able to keep it up? Studies show that January is the most lucrative month for fitness centers. A lot of the people start a gym membership, because they want to completely redefine themselves. Google searches for health and fitness peak at the beginning of the year, and according to the 2017 IHRSA Media Report, 10.8% of all health club members join their gyms in January. Yet many who embark on fitness resolutions in the new year struggle to stick with their new habit, and more than 90% of these people will quit after three months of going to the gym. 

There are many reasons behind not being able to commit to exercising. Some are usually very busy on their daily routines and just could not find the time for excersice. Some find sports activities to be unenjoyable. Some people may find it intimidating to walk into a gym where everyone is fit and may think they stand out. Some people find gyms too complicated with all the exercise machines and don't know where to start. The problem that is aimed to be resolved by building this marketplace is to help people continue exercising and pursue their dream of living a healthy lifestyle. 

## R8-Why is it a problem that needs solving?
Physical inactivity can have serious implications for people’s health. According to World Health Organization's data, approximately 2 million deaths per year are attributed to physical inactivity and sedentary lifestyle and could very well be among the 10 leading causes of death and disability in the world. Sedentary lifestyles increase all causes of mortality, double the risk of cardiovascular diseases, diabetes, and obesity, and increase the risks of colon cancer, high blood pressure, osteoporosis, lipid disorders, depression and anxiety. According to WHO, 60 to 85% of people in the world from both developed and developing countries lead sedentary lifestyles, making it one of the more serious yet insufficiently addressed public health problems of our time. It is estimated that nearly two thirds of children are also insufficiently active, with serious implications for their future health.


## R11-Description of your marketplace app (website), including:
### Purpose
The purpose of this marketplace application is to provide a platform for people who want to start living a healthier lifestyle by excercising with the correct tools and programs that are most suitable for their needs. Users who sign up to this website can either become coaches in their own specialized fitness fields or join programs posted by other users that are most suitable for them through a program suggestion algorithm that takes the users body profile data and makes recommendations accordingly. This application gives users the ability to update their body profiles and helps them progress with the right programs.



### Functionality / features
#### Authentication
The application's authentication system is integrated with the devise gem that handles opearations that require authentication. This system comes into effect when a user wants to sign up to the website and sign in with the created account. This functionality also provides features to handle actions that require for the user to be identified and authorised such as creating a program, purchasing a program, adding reviews to programs, creating a body profile and using the 'suggestions' recommendation algorithm.

#### Authorisation
All users that are members of the website have certain authorisations. Users can view every program, but can only edit and delete programs that belong to them. Users can view all the reviews that are made on programs but can only delete the reviews that thay have posted. Users also have the authority to only edit and delete their own body profiles. The website also has an admin assigned. Admin user has extra authority over the website. Admin can edit and delete all programs that are posted on the website, regardless of them owning the program. Admins can also delete reviews made by all users and can view the content of every website.

#### Suggestions
This is one of them main features of this application. The suggestion feature uses an algorithm that calculates a users BMI value from the provided information on the users profile and performs a filtering operation on every registered program and finds the most suitable programs that will help the users with their traning. In order to use this feature, users must create a body profile. 

#### Payment System
The application uses Stripe to handle payments and transactions. Users can purchase programs posted by other users and access the content of the programs only after purchase. 

#### Search Functionality
The website has a search functionality that filteres programs according to titles or categories. 

#### Admin Functionality
The website has an admin feature. There could be any number of admins but they have to be assinged the role of the admin to be able to access the authorities. The admin can either edit and delete programs and reviews within the website, or they can use the admin dashboard to access full control over every feature and relations throughout the website. 

#### Resposive Design
The website is responsive to different devices and screen sizes. This makes the program efficient and convinient to access via any device. 

### Sitemap
![Sitemap](docs/sitemap.png)


### Screenshots
#### Landing Page
![landing beginning](docs/index-begin.png)

#### Landing Page Programs
![lanfing programs](docs/index-programs.png)

#### Sign Up
![Sign Up](docs/Sign-up.png)

#### Sign In
![Sign In](docs/log-in.png)

#### Suggestions
![Suggestions](docs/suggestion.png)

#### User Profile Page
![User Profile Page](docs/profile-page.png)

#### Instructor Page
![Instructor Page](docs/coach-page.png)

#### Program Before Purchase
![Program Before Purchase](docs/program-not-purcashed.png)

#### Program After Purchase
![Program After Purchase](docs/program-after-purcahse.png)

#### Full Program Show Page 
![Full Program Show Page ](docs/full-page-show.png)

#### Payment Checkout
![Payment Checkout](docs/payment.png)

#### Successful Checkout
![Successful Checkout](docs/purchase-success.png)

#### Admin Dashboard
![Admin Dashboard](docs/admin-dash.png)


### Target audience
The target audience of this website is people who want to discover a wide range of fitness categories and sports fields, people who want to gain expert level coaching from professionals and for people who want to get started with excerising and fitness but do not have the right tools or the guidance to motivate them in the long run. 

### Tech stack (e.g. html, css, deployment platform, etc)
```
- Languages 
    - HTML5
    - CSS3
    - Ruby "2.7.2"

- Application Framework
    - Ruby on Rails - version '6.0.3.7'

- Database Managament System
    - PostgreSQL

- CSS Framework
    - Bootstrap - version "5" 

- Deployment Platform
    - Heroku

- Image Cloud Storage 
    - Amazon Simple Storage Service (S3)

- Payment System 
    - Stripe 

- Version Control and Remote Hosting
    - Git 
    - Github

- Project Management
    - Trello 
    - Balsamiq Wireframes
    - Diagrams.net

- Ruby Custom Gems
    - gem 'devise'
    - gem 'faker'
    - gem 'jquery-rails'
    - gem "aws-sdk-s3"
    - gem 'stripe'
    - gem 'ransack'
    - gem 'cancancan'
    - gem 'rails_admin'
    - gem 'bullet'
```
## R12-User stories for your app

### Visitors 
 - As a visitor, I want to be able to sign up to the website with a new account.
 - As a visitor, I want to be able to sign in to the website with my existing account.
 - As a visitor, I want to be able to see all the programs listed by other users.
 - As a visitor, I want to be able to view the profile page of the instructor of the programs.
 - As a visitor, I want to be able to search for programs with the search bar.
 - As a visitor, I want to be able to contact the instructor of a program with email through the program's show page.
 - As a visitor, I want to be able to view the reviews made on programs by all users.

### Users 
 - As a user, I want to be able to view my personal profile page after creating an account.
 - As a user, I want to be able to create new programs to be listed on the index page, so potential clients can view them.
 - As a user, I want to be able to edit and update my posted programs, so my clients can access the latest content.
 - As a user, I want to be able to view the content of my program.
 - As a user, I do not want users to be able to view the content of my program without purchasing it.
 - As a user, I want to be able to be able add reviews to programs after signing in with my created account.
 - As a user, I want to be able to delete the reviews I made in programs.
 - As a user, I want to be able to create a body profile with my age, height and weight values and obtain my BMI value.
 - As a user, I want to be able to see the contents of the programs after purchasing them.
 - As a user, I want to be able to receive a suggestion from the website after creating a body profile.
 - As a user, I want to be able to update my account information at any time.

### Admin
- As an admin, I want to be able to access the content of every program without having to purchase it.
- As an admin, I want to be able to edit and delete programs created by users.
- As an admin, I want to be able to delete reviews made on programs by other users.
- As an admin, I want to be able to access the admin dashboard that is only available to admins.
- As an admin, I want to be able to control the whole flow of the webiste and relationships through the admin dashboard.


## R13-Wireframes for your app
#### Landing Page
![home page](docs/w-home-page.png)

#### Sign Up Page
![Sign Up](docs/w-sign-up.png)

#### New Listing
![New Listing](docs/w-new-listing.png)

#### User Profile Page 
![User Profile Page](docs/w-profile-page.png)

#### Program Coach Page
![Program Coach Page](docs/w-coach-page.png)

#### Show Page
![Show Page](docs/w-program-page.png)

#### Suggestions Page
![Suggestions](docs/w-suggestions.png)


## R14-An ERD for your app
#### Initial ERD
![Initial ERD](docs/initial-erd.jpg)

#### Developed ERD
![Latest ERD](docs/developed-erd.jpg)




## R15-Explain the different high-level components (abstractions) in your app






## R16-Detail any third party services that your app will use

### Devise
Devise is an established and popular gem that is used for authentication in rails applications. Devise is based on a modularity concept and lets developers use only the solutions that thay need. Devise carries the heavy load of authentication with modules that operate to register new users, hash passwords before they are saved to the database, validate emails and passwords, recover and reset passwords and many other operations. In this application, devise is used for registrating new accounts, handling user sessions and authenticating users before they are allowed access to certain features.

### Amazon Simple Storage Service (S3) 
Amazon S3 is a secure cloud service offered by Amazon Web Services that provides object storage through a web service interface. In this application, it is used for uploading and storing images of programs and eliminates the need for local storage. It is also highly compatible with deployment platforms like Heroku. 

### Heroku 
Heroku is a platform as a service (PaaS) that enables developers to build, run, and operate applications entirely in the cloud. Heroku has its own database management system that does not interfere with the local database setup of applications. This application is deployed with Heroku. 

### Github
Github is an internet hosting provider for software applications that uses the well established version control system Git. Github provides access control and several collaboration features such as bug tracking, feature requests, task management and continuous integration. For this project, Github is used to store the project remotely right from the start and helps manage different branches and merging through pull requests. It allows the developer to view code changes between commits visually which makes development much more efficient.

### Stripe
Stripe is a financial services and software as a service that offers payment processing software and application programming interfaces for applications. This application uses Stripe for processing and accepting payments. Stripe is implemented with the help of the stripe gem. 

### Ransack
Ransack enables the creation of both simple and advanced search forms for rails applications. Ransack gem is used for filtering programs in the application with both title and the category attributes of the program model.

### Bullet
The Bullet gem is designed to help increase the application's performance by reducing the number of queries it makes. It watches queries during development of the application and notifies the developer when eager loading should be added. 

### Faker
Faker is a gem that generates fake data to help in the development process. In this application, faker gem is used to create users with generated random first and last names. 

### Cancancan
CanCanCan is an authorization library for Ruby and Ruby on Rails which restricts what resources a given user is allowed to access. For this application, CanCanCan is used to grant the admin user with extra authorization that allows them to delete and edit all programs and reviews. 

### Rails Admin
Rails admin is an easy to use admin interface that allows authorised personel of the application to perform all kinds of actions in the website. 

### Bootstrap
Bootstrap is a free and open source CSS framework directed at responsive, mobile-first front-end web development. It contains CSS and JavaScript based design templates and components. This application uses many of bootstrap's components and features for styling and responsive design.


## R17-Describe your projects models in terms of the relationships (active record associations) they have with each other







## R18-Discuss the database relations to be implemented in your application







## R19-Provide your database schema design
```ruby
create_table "active_storage_attachments", force: :cascade do |t|
  t.string "name", null: false
  t.string "record_type", null: false
  t.bigint "record_id", null: false
  t.bigint "blob_id", null: false
  t.datetime "created_at", null: false
  t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
  t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
end

create_table "active_storage_blobs", force: :cascade do |t|
  t.string "key", null: false
  t.string "filename", null: false
  t.string "content_type"
  t.text "metadata"
  t.bigint "byte_size", null: false
  t.string "checksum", null: false
  t.datetime "created_at", null: false
  t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
end

create_table "categories", force: :cascade do |t|
  t.string "category_name"
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
end

create_table "clients_programs", force: :cascade do |t|
  t.bigint "user_id", null: false
  t.bigint "program_id", null: false
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
  t.index ["program_id"], name: "index_clients_programs_on_program_id"
  t.index ["user_id"], name: "index_clients_programs_on_user_id"
end

create_table "profiles", force: :cascade do |t|
  t.date "age"
  t.float "height"
  t.float "weight"
  t.integer "body_fat_percentage"
  t.bigint "user_id", null: false
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
  t.index ["user_id"], name: "index_profiles_on_user_id"
end

create_table "programs", force: :cascade do |t|
  t.string "title"
  t.text "description"
  t.integer "duration"
  t.text "content"
  t.integer "coach_id"
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
  t.bigint "user_id"
  t.bigint "category_id", null: false
  t.integer "price"
  t.index ["category_id"], name: "index_programs_on_category_id"
  t.index ["user_id"], name: "index_programs_on_user_id"
end

create_table "reviews", force: :cascade do |t|
  t.string "title"
  t.text "content"
  t.integer "rating"
  t.bigint "user_id", null: false
  t.bigint "program_id", null: false
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
  t.index ["program_id"], name: "index_reviews_on_program_id"
  t.index ["user_id"], name: "index_reviews_on_user_id"
end

create_table "users", force: :cascade do |t|
  t.string "email", default: "", null: false
  t.string "encrypted_password", default: "", null: false
  t.string "reset_password_token"
  t.datetime "reset_password_sent_at"
  t.datetime "remember_created_at"
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
  t.string "first_name"
  t.string "last_name"
  t.boolean "admin", default: false
  t.index ["email"], name: "index_users_on_email", unique: true
  t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
end

add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
add_foreign_key "clients_programs", "programs"
add_foreign_key "clients_programs", "users"
add_foreign_key "profiles", "users"
add_foreign_key "programs", "categories"
add_foreign_key "programs", "users"
add_foreign_key "reviews", "programs"
add_foreign_key "reviews", "users"
```






## R20-Describe the way tasks are allocated and tracked in your project