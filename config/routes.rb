Rails.application.routes.draw do
  resources :products
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#estore"
  get "pages/account"
  get "pages/blogs"
  get "pages/cart"
  get "pages/comment"
  get "pages/contact"
  get "pages/estore"
  get "pages/men"
  get "pages/registrations"
end
