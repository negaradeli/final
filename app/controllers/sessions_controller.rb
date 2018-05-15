class SessionsController < ApplicationController
    
  def new
    
  end
  
  def create
    user = User.find_by(email: params["email"])
    if user == nil
      redirect_to "/", notice: "Please sign up first."
    else
      if user.password == params["password"]
        session["user_id"] = user.id
        redirect_to "/", notice: "Hello, #{user.name}"
      else
        redirect_to "/", notice: "Nice try."
      end
    end
      
      
  end

end