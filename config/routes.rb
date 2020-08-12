Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :restaurants
  # resources :reviews

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
 
end

 # get "/restaurants", to: "restaurants#index", as: :restaurants
  # get "/restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "/restaurants", to: "restaurants#create"
  # get "/restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: :new_restaurant_review
  # post "/restaurants/:restaurant_id/reviews", to: "reviews#create", as: :restaurant_reviews
  # get "/restaurants/:id", to: "restaurants#show", as: :restaurant
