class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:notice] = "Successfully logged in"
      redirect_to specifications_path
    else 
      flash.now[:alert] = "Invalid Credentials"
      render 'new'
    end    
  end

  def destroy
  end 


end    