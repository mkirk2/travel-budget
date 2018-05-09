Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'
  root 'welcome#index'
  resources :trips
  get 'trips', :to => 'trips#index'
  get 'new_trip', :to => 'trips#new_trip'
  
end
