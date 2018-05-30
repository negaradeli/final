class RentalsController < ApplicationController

  def index
    #rentals = Rentals.all
  end

  def show
    rental = Rentals.find_by(id: params["id"])
    if rental == nil
      redirect_to "/", notice: "This rental does not exist!"
    end
  end

  def destroy
    Rentals.delete(params["id"])
    redirect_to "/rentals", notice: "Rental deleted!"
  end

  def new
    if session["host_id"] == nil
      redirect_to "/", notice: "You are not allowed to create a new rental!"
    end
  end

  def create
    if session["host_id"] == nil
      redirect_to "/", notice: "You are not allowed to create a new rental!"
      return
    end
    Rentals.create title: params["title"],
                price: params["price"],
                host_id: session["user_id"],
                summary: params["summary"],
                location: params["location"],
                photo_url: params["photo_url"]

    redirect_to "/rentals", notice: "Thanks for adding a rental!"
  end

  def edit

  end

  def update
    if session["host_id"] == nil
      redirect_to "/", notice: "You are not allowed to update this rental!"
      return
    end
    rental = Rentals.find_by(id: params["id"])
    
    rental.update title: params["title"],
                summary: params["summary"],
                location: params["location"],
                photo_url: params["photo_url"],
                price: params["price"]

    redirect_to "/rentals/#{rental.id}", notice: "Rental updated."
  end
end 
