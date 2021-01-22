Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions' }
  root to: 'pages#home'

  resources :cats
  get '/cats/adopt/:id', to: 'cats#adopt'
  get '/cats/pickup/:id', to: 'cats#pickup'

  resources :profiles, only: [:edit, :update]
  get '/profiles/edit/:cat_id', to: 'profiles#edit' 
  put '/profiles/:cat_id/', to: 'profiles#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
