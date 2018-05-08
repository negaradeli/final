Rails.application.routes.draw do

  # root 'books#index' 
  
  get "/" => 'books#index'

  get "/books" => "books#index"


  get "/books/new" => "books#new"
  get "/books/create" => "books#create"
  get "/books/:id/delete" => "books#destroy"
  get "/books/:id" => "books#show"
  
  get "/books/:id/edit" => "books#edit"
  get "/books/:id/update" => "books#update"
end
