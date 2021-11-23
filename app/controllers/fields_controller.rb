class FieldsController < ApplicationController
  def index
    @fields = Field.all
    #affiche tout les terrains
  end

  def show
    @field = Field.find(params[:id])
    #trouve et affiche un terrain selectionné dans la show avec ses parametres
    @markers = [{
      lng: @field.longitude,
      lat: @field.latitude,
      info_window: render_to_string(partial: "info_window_fields", locals: { service: @field }),
      image_url: helpers.asset_url("")
      },
        {
          lng: current_user.longitude,
          lat: current_user.latitude,
          info_window: render_to_string(partial: "info_window", locals: { user: current_user }),
          image_url: helpers.asset_url("")
        }]
      #ajout de markers sur la map prenant la long et lat.Une info window rend l'adresse du user
      # et du terrain.
  end
end
