Rails.application.routes.draw do
  devise_for :users 
  get '/', to: 'listings#redirect'
  resources :listings
  resources :profiles
end
