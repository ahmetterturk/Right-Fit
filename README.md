# RightFit

## R9-A link (URL) to your deployed app (i.e. website)

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




## R14-An ERD for your app





## R15-Explain the different high-level components (abstractions) in your app






## R16-Detail any third party services that your app will use





## R17-Describe your projects models in terms of the relationships (active record associations) they have with each other







## R18-Discuss the database relations to be implemented in your application







## R19-Provide your database schema design







## R20-Describe the way tasks are allocated and tracked in your project