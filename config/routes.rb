Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"

  get '/programs', to: 'programs#index', as:'programs'
  get '/programs/new', to: 'programs#new', as:'new_program'
  post '/programs', to: 'programs#create'
  get '/programs/:id', to: 'programs#show', as: 'program'
  get '/programs/:id/edit', to: 'programs#edit', as: 'edit_program'
  patch '/programs/:id', to: 'programs#update'
  delete '/programs/:id', to: 'programs#delete'


  get '/users/:id', to: 'users#page', as: 'user_page'


  get '/profiles', to: 'programs#index', as: 'profiles'
  get '/users/profile', to: 'programs#show', as: 'profile'
  get '/users/profile/new', to: 'profiles#new', as: 'new_profile'
  post '/profiles', to: 'profiles#create'
  get '/users/profile/edit', to: 'profiles#edit', as: 'edit_profile'
  patch '/users/profile', to: 'profiles#update'

end
