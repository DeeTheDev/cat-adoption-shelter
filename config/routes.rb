Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions' }
  root to: 'pages#home'

  resources :pages
  resources :dashboards
  get '/dashboards/show/:cat_id', to: 'dashboards#show'


  resources :cats
  get '/cats/adopt/:id', to: 'cats#adopt'

  resources :appointments, only: [:new, :create]
  get '/appointment/new/:cat_id', to: 'appointments#new'
  post '/appointment/:cat_id', to: 'appointments#create'

  resources :deliveries, only: [:new, :create]
  get '/delivery/new/:cat_id', to: 'deliveries#new'
  post '/delivery/:cat_id', to: 'deliveries#create'

  resources :profiles, only: [:edit, :update]
  get '/profiles/edit/:cat_id', to: 'profiles#edit' 
  put '/profiles/:cat_id/', to: 'profiles#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
