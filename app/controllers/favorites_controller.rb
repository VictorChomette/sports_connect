class FavoritesController < ApplicationController
  def index
    @fields = current_user.fields
  end

  def create
    @field = Field.find(params[:field_id])
    favorite = @field.favorites.new(user_id: current_user.id)
    @favorite = current_user.favorites.find_by(field: @field)
    if favorite.save
      flash[:notice] = "Done !"
    else
      flash[:alert] = "Problem"
    end
    if params[:source] == "fields"
      redirect_to fields_path
    else
      redirect_to field_path(@field)
    end
  end

  # def create
  #   @field = Field.find(params[:field_id])
  #   # favorite = @field.favorites.new(user_id: current_user.id)

  #   # if @favorite.present?
  #   #   @favorite.destroy
  #   #   json = { status: :destroyed }
  #   # else
  #   #   @favorite = Favorite.create(user: current_user, field: @field)
  #   #   binding.pry
  #   #   json = { status: :created }
  #   # end

  #   # respond_to do |format|
  #   #   format.html
  #   #   format.json { render json: json }
  #   # end
  # end

  def fav
    favorite = current_user.favorites.find_by(field_id: params[:field_id])
    if favorite
      favorite.destroy
      render json: { status: :destroyed, count: current_user.favorites.count }
    else
      Favorite.create(user: current_user, field: Field.find(params[:field_id]))
      render json: { status: :created, count: current_user.favorites.count }
    end
  end

  def destroy
    @field = Field.find(params[:field_id])
    favorite = @field.favorites.find_by(user_id: current_user.id)
    if favorite.present?
      favorite.destroy
      flash[:notice] = "Deleted !"
    end
    if params[:source] == "fields"
      redirect_to fields_path
    else
      redirect_to field_path(@field)
    end
  end
end
