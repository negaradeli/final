class BooksController < ApplicationController

  def index

  end

  def show

  end

  def destroy
    Book.delete(params["id"])
    redirect_to "/books"
  end

  def new

  end

  def create
    Book.create title: params["title"],
                price: (params["price"].to_f * 100).to_i
    
    redirect_to "/books"
  end

  def edit

  end

  def update

  end

end
