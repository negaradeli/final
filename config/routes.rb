Rails.application.routes.draw do

    get "/books" => "books#index"
    get "/details" => "books#details"
    get "/books/delete" => "books#destroy"
    get "/books/create" => "books#create"
end
