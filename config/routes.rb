Rails.application.routes.draw do
  resources :books
  devise_for :users
  root "books#index"
  get '/admin', to: 'books#admin'
  get 'search', to: 'books#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
