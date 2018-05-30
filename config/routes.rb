Rails.application.routes.draw do

  # root 'petbnb#index' 
  
  get "/" => 'petbnb#index'
  get "petbnb/show" => "petbnb#show"
  get "/login" => "sessions#new"
  get "/sessions/create" => 'sessions#create'
  get "/logout" => "sessions#destroy"
  
  get "/rentals" => "rentals#index"
  get "/rentals/new" => "rentals#new"
  get "/rentals/create" => "rentals#create"
  get "/rentals/:id/delete" => "rentals#destroy"
  get "/rentals/:id" => "rentals#show"
  get "/rentals/:id/edit" => "rentals#edit"
  get "/rentals/:id/update" => "rentals#update"
  
  get "/myaccount" => "users#show"
  get "/bookings/:id" => "bookings#show"
  get "/bookings/:id/create" => "bookings#create"
  
  get "/users" => "users#index"
  get "/users/new" => "users#new"
  get "/users/create" => "users#create"
  get "/users/:id/delete" => "users#destroy"
  get "/users/:id" => "users#show"
  get "/users/:id/edit" => "users#edit"
  get "/users/:id/update" => "users#update"
  
  
end
