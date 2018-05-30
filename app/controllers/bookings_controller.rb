class BookingsController < ApplicationController

  def index

  end

  def show
    if session["user_id"] == nil
      redirect_to "/", notice: "You are not allowed to book this rental!"
      return
    end
    rental = Rentals.find_by(id: params["id"])
    if rental == nil
      redirect_to "/", notice: "This rental does not exist!"
    end
  end

  def destroy

  end

  def new

  end

  def create
    if session["user_id"] == nil
      redirect_to "/", notice: "You are not allowed to book this rental!"
      return
    end
    rental = Rentals.find_by(id: params["id"])
    if rental == nil
      redirect_to "/", notice: "This rental does not exist!"
      return
    end
    
    if session["user_id"] == rental.host_id
      redirect_to "/", notice: "You cannot book your own rental!"
      return
    end
    
    createBooking = true
    startDate = Date.parse(Date.parse(params["start_date"]).strftime("%y-%m-%d"))
    endDate = Date.parse(Date.parse(params["end_date"]).strftime("%y-%m-%d"))
    for booking in Bookings.all
      if booking.rental_id == rental.id and 
          (startDate < Date.parse(booking.end_date.strftime("%y-%m-%d")) or
            endDate > Date.parse(booking.start_date.strftime("%y-%m-%d")))
        createBooking = false
        break
      end
    end
    if createBooking
      Bookings.create start_date: startDate,
                end_date: endDate,
                user_id: session["user_id"],
                host_id: rental.host_id,
                rental_id: params["id"]
      redirect_to "/", notice: "Booking completed!"
    else
      redirect_to "/rentals/", notice: "Booking could not be completed. Date was not available."
    end
  end

  def edit

  end

  def update
    
  end

end
