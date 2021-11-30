class ReviewsController < ApplicationController
  def create
    @field = Field.find(params[:field_id])
    @review = Review.new(review_params.merge(user: current_user))
    @review.field = @field

    if @review.save
      render json: { html: render_to_string(partial: 'fields/reviews_list.html', locals: { field: @field }) }
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
