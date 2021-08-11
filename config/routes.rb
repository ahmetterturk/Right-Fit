Rails.application.routes.draw do
  # rails_admin route
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # devise routes
  devise_for :users

  # root route
  root "programs#index"
  
  # programs and reviews routes
  resources :programs do 
    resources :reviews 
  end

  # users routes
  get '/users/:id', to: 'users#self_page', as: 'user_page'
  get '/programs/:id/coach', to: 'users#coach_page', as: 'program_coach_page'

  # profiles routes
  get '/profiles', to: 'programs#index', as: 'profiles'
  get '/users/profile', to: 'programs#show', as: 'profile'
  get '/users/profile/new', to: 'profiles#new', as: 'new_profile'
  post '/profiles', to: 'profiles#create'
  get '/users/profile/edit', to: 'profiles#edit', as: 'edit_profile'
  patch '/users/profile', to: 'profiles#update'
  delete '/users/profile', to: 'profiles#delete'

  # suggestions route
  get '/suggestions', to: 'suggestions#index', as: 'suggestions'

  # payments routes 
  resources :payments, only: [:create]
  get 'payment/success', to: 'payments#success'
  delete '/client_programs/:id', to: 'payments#leave_program', as: 'leave_program'
end
