Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions' }
  root to: 'pages#index'

  resources :users
  resources :pages
  resources :dashboards, only: [:index, :show, :edit, :update_user, :update_profile]
  get '/dashboards/:id/edit/', to: 'dashboards#edit', :as => :dashboard_edit_user
  get '/dashboards/show/:cat_id', to: 'dashboards#show'
  patch '/dashboards/:id/user', to: 'dashboards#update_user', :as => :update_user
  patch '/dashboards/:id/profile', to: 'dashboards#update_profile', :as => :update_profile
  delete '/dashboards/:id/destroy', to: 'dashboards#destroy', :as => :destroy_account

  resources :cats
  get '/cats/adopt/:id', to: 'cats#adopt'

  resources :appointments, only: [:new, :create, :destroy]
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
