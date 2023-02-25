Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  authenticated :user do
    root to: 'categories#index', as: :authenticated_root
  end
  get '/categories/new', to: 'categories#new'
  post '/categories', to: 'categories#create'

  get '/expenditures/new', to: 'expenditures#new'
  post '/expenditures', to: 'expenditures#create'

  resources :categories, only: %i[index show]
  resources :expenditures, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
