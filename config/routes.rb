Rails.application.routes.draw do
  devise_for :users
  get '/', to: 'listings#redirect'
  resources :listings
  resources :profiles, only: [:show, :edit, :update]
  resources :dashboards, only: [:show]
  get "/payments/session", to: "payments#stripe_id"
  get "/payments/success", to: "payments#success"
  post "/payments/webhook", to: "payments#webhook"
  root to: 'listings#index'
end
