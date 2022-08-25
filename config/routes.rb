Rails.application.routes.draw do
  get 'report/most_sold_product'

  resources :purchases
  resources :categories
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
