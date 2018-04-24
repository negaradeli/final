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

  end

  def edit

  end

  def update

  end

end
