class SessionsController < ApplicationController

  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
  
    # if user exists AND password is correct
    if user && User.authenticate_with_credentials(params[:email], params[:password])
      
      # save user id inside the browser cookie
      session[:user_id] = user.id
      redirect_to '/'
    else
  
      # if users credentials are incorrect, send them back to login form
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end
