class PresencesController < ApplicationController
  # before_action :set_field

  def index
    @presences = current_user.presences
  end

  def create
    @field = Field.find(params[:field_id])
    @presence = Presence.new(presence_params)
    @presence.field = @field
    @presence.user = current_user

    if @presence.save
      redirect_to presences_path
    else
      render :new
    end
  end

  def fetch
    # params[:day]
    # params[:field_id]

    # @field = Field.find(params[:field_id])
    # @field.presences_by_hour(....)
    binding.pry

    # render json: {  }
  end

  private

  # def set_field
  #   @field = Field.find(params[:field_id])
  # end

  def presence_params
    params.require(:presence).permit(:date)
  end
end
