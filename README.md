# models generation 
rails g model Program title description:text duration:integer content:text coach_id:integer client_id:integer

rails g migration AddUserRefToPrograms user:references

<!-- rails g migration ClientsProgram user:references program:references -->
rails g model ClientsProgram user:references program:references