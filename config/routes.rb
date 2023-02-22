Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/categories'
  get 'pages/transactions'
  get 'pages/sessions'
  get 'pages/categories_new'
  get 'pages/transactions_new'
  authenticated :user do
    root to: 'categories#index', as: :authenticated_root
  end
  root to: 'splashes#index'

  devise_for :users 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end