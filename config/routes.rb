Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"

  get '/programs', to: 'programs#index', as:'programs'
  get 'programs/new', to: 'programs#new', as:'new_program'
  post '/programs', to: 'programs#create'
  get '/programs/:id', to: 'programs#show', as: 'program'
  get '/programs/:id/edit', to: 'programs#edit', as: 'edit_program'
  patch '/programs/:id', to: 'programs#update'
  delete '/programs/:id', to: 'programs#delete'

end
