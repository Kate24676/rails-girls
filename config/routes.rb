Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :events
  devise_for :users
  get 'pages/info'
  root to: "ideas#index"
  resources :ideas
  resources :foods
  get "food", to: "foods#index"
  delete "food/:id", to: "foods#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
