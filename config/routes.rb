Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  authenticated :user do
    root to: 'categories#index', as: :authenticated_root
  end
  get '/categories/new', to: 'categories#new'
  post '/categories', to: 'categories#create'
  
  get '/transactions/new', to: 'transactions#new'
  post '/transactions', to: 'transactions#create'

  resources :categories, only: [:index, :show]
  resources :transactions, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end