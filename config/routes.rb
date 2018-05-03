Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'
  root 'welcome#index'
  resources :trips
  get 'new_trip', :to => 'trips#new_trip'
  get 'current_trip', :to => 'trips#current_trip'
  get 'past_trips', :to => 'trips#past_trips'
  
end
