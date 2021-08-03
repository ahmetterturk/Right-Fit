Rails.application.routes.draw do
  devise_for :users

  root "programs#index"

  # programs
  # get '/programs', to: 'programs#index', as:'programs'
  # get '/programs/new', to: 'programs#new', as:'new_program'
  # post '/programs', to: 'programs#create'
  # get '/programs/:id', to: 'programs#show', as: 'program'
  # get '/programs/:id/edit', to: 'programs#edit', as: 'edit_program'
  # patch '/programs/:id', to: 'programs#update'
  # # delete '/programs/:id', to: 'programs#delete'
  # delete '/programs/:id', to: 'programs#delete', as: 'delete_program'
  
  # programs and reviews
  resources :programs do 
    resources :reviews 
  end

  # users
  get '/users/:id', to: 'users#self_page', as: 'user_page'
  get '/programs/:id/coach', to: 'users#coach_page', as: 'program_coach_page'

  # profiles
  get '/profiles', to: 'programs#index', as: 'profiles'
  get '/users/profile', to: 'programs#show', as: 'profile'
  get '/users/profile/new', to: 'profiles#new', as: 'new_profile'
  post '/profiles', to: 'profiles#create'
  get '/users/profile/edit', to: 'profiles#edit', as: 'edit_profile'
  patch '/users/profile', to: 'profiles#update'
  delete '/users/profile', to: 'profiles#delete'

  # suggestions
  get '/suggestions', to: 'suggestions#index', as: 'suggestions'

  # client_programs
  # post '/client_programs', to: 'client_programs#create', as: 'client_programs'
  # delete '/client_programs/:id', to: 'client_programs#leave_program', as: 'leave_program'

  # payments
  resources :payments, only: [:create]
  get 'payment/success', to: 'payments#success'
  # get 'payment/cancel', to: 'payments#cancel'
  delete '/client_programs/:id', to: 'payments#leave_program', as: 'leave_program'

end
