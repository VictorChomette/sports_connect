class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @field = Field.find(params[:field_id])
    @review.field = @field
    @review.user = current_user
    if @review.save
      redirect_to field_path(@field)
    else
      @markers = [{
        lng: @field.longitude,
        lat: @field.latitude,
        info_window: render_to_string(partial: "fields/info_window_fields", locals: { field: @field }),
        image_url: helpers.asset_url("field.png")
      }]
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
