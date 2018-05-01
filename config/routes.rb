Rails.application.routes.draw do

    get "/books" => "books#index"
    get "/books/delete" => "books#destroy"
    get "/books/create" => "books#create"
    get "/books/:id" => "books#details"

end
