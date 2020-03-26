Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root "posts#index"
  resources :users, only: [:index, :edit, :update, :destroy]
  resources :groups, only: [:index, :new, :create, :edit, :updata] do
    resources :messages, only: [:index, :create]
  end
end