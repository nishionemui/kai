Rails.application.routes.draw do
  devise_for :users
  
  root "posts#index"
  resources :users, only: [:index, :edit, :update, :destroy]
  resources :groups, only: [:new, :create]

end