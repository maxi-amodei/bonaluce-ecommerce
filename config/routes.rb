# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  root to: 'pages#home'
  get '/contact', to: 'pages#contact'

  resources :products
  resources :categories, only: [:show]
  resources :orders, only: [:index, :create]
  resources :added_to_cart_items, only: [:create, :destroy, :update], as: :cart_items

  get '/cart', to: 'added_to_cart_items#index'
end
