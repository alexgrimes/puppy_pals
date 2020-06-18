class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end 

  def show
    @review = Review.find(params [:id])
  end 

  def new
    @review = Review.new
  end 

  def create
    @review = Review.create(review_params)
    if @review.save
      redirect_to @user
    else 
      render :new
    end 
  end

  private 
  def review_params
      params.require(:review).permit(:dog_review, :dog_rating)
  end 
end 