class FavoritesController < ApplicationController
  def index
    @fields = current_user.fields
  end

  def create
    @field = Field.find(params[:field_id])
    favorite = @field.favorites.new(user_id: current_user.id)
    if favorite.save
      flash[:notice] = "Done !"
    else
      flash[:alert] = "Problem"
    end
    redirect_to fields_path
  end

  def destroy
    @field = Field.find(params[:field_id])
    favorite = @field.favorites.find_by(user_id: current_user.id)
    if favorite.present?
      favorite.destroy
      flash[:notice] = "Deleted !"
    end
    if params[:source] == "fields"
      redirect_to favorites_path
    else
      redirect_to fields_path
    end
  end
end
