Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/dogs", to: "dogs#index", as: "dogs"
  get "/dogs/:id", to: "dogs#show", as: "dog"
  get "/dogs/new", to: "dogs#new", as: "new_dog"
  post "/dogs", to: "dogs#create"


  get "/activities", to: "activities#index", as: "activities"
  get "/activities/:id", to: "activities#show", as: "activity"
  
  
end
