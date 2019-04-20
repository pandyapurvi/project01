class SessionController < ApplicationController
  def new
  end

  def create
    #find the user in the system
    user = User.find_by :email => params[:email]
    #if the user is returning something and password is authenticate
    if user.present? && user.authenticate(params[:password])
      # then we assisgn the session key of user id to the actual user.id
      session[:user_id] = user.id
      redirect_to root_path
    else
       # either the user didnt enter a valid email, or the password didnt match the email entered
      flash[:error] = "Invalid login or password. Please try agiain!"
      #flash is stay only for one time. It vanish when we return in the same page again.
      redirect_to login_path
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
