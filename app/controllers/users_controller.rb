class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]
  def index
  @users = User.all
  end

  def new
      @user = User.new
    end

    def create
    @user = User.new user_params
    if @user.save
      #this returns a boolean so we can pose it as a question
      redirect_to root_path
    else
      render :new #using render allows error messages to show
    end
  end
    private
  def user_params
    params.require(:user).permit(:email,:password,:password_confirmation)
  end
end
