# models generation 
rails g model Program title description:text duration:integer content:text coach_id:integer client_id:integer

rails g migration AddUserRefToPrograms user:references

<!-- rails g migration ClientsProgram user:references program:references -->
rails g model ClientsProgram user:references program:references

rails g model Category category_name

rails g model Review title content:text rating:integer user:references program:references

rails g model Profile age:date height:float weight:float body_fat_percentage:integer user:references

rails g migration AddCategoryIdToPrograms category:references