class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @field = Field.find(params[:list_id])
    @review.field = @field
    if @review.save
      redirect_to field_path(@field)
    else
      render 'fields/show'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to field_path(@review.field)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
