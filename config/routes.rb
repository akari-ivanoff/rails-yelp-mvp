Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # rails generate model Restaurant name:string address:text phone_number:string category:string
  # rails generate model Review content:string rating:integer restaurant:references
  resources :restaurants, only: [ :index, :new, :create, :show ] do
    resources :reviews, only: [ :new, :create ]
    # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
    # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'
  end
end
