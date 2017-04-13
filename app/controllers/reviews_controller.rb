class ReviewsController < ApplicationController
  def index

  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant_id = @restaurant.id
    @review.save
    redirect_to restaurant_path(@restaurant.id)
  end

  private
  def review_params
    params.require(:review).permit(:content, :stars)
  end
end
