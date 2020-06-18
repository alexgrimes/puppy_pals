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
    if @review.valid?
      @review.save
      redirect_to @review.user
    else 
      render :new
    end 
  end

  private 
  def review_params
      params.require(:review).permit(:match_id, :appointment_id, :dog_review, :dog_rating)
  end 
end 