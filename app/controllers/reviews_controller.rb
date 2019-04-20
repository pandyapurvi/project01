class ReviewsController < ApplicationController
  before_action :check_for_login, :only => [:new, :create]
def index
@reviews = Review.all
end
  def new
    @review = Review.new
  end

  def show
    @review = Review.find params[:id]
  end
  def create

    review = Review.create review_params
    @current_user.reviews << review
    redirect_to reviews_path
  end


  private
  def review_params
    params.require(:review).permit(:username,:comment,:rating,:car_id,:user_id)
  end
end
