class PresencesController < ApplicationController
  # before_action :set_field

  def index
    @presences = current_user.presences
  end

  def create
    @field = Field.find(params[:field_id])
    date = DateTime.parse(presence_params[:day]+"T"+presence_params[:hour]+":00:00")
    @presence = Presence.new(date: date, field: @field, user: current_user)

    if @presence.save
      redirect_to presences_path
    else
      render :new
    end
  end

  def fetch
    # day =
    # params[:day]
    # params[:field_id]
    @field = Field.find(params[:field_id])
    render json: { html: render_to_string(partial: 'fields/presences_by_hour', locals: { field: @field }) }
  end

  private

  def presence_params
    params.require(:presence).permit(:date, :day, :hour)
  end
end
