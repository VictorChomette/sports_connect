class FieldsController < ApplicationController
  def index
    @fields = Field.all
    #affiche tout les terrains
    #affiche tout les markers sur la map
    @markers = @fields.geocoded.map do |field|
      {
      lng: field.longitude,
      lat: field.latitude,
      info_window: render_to_string(partial: "info_window_fields", locals: { field: field }),
      }
    end
  end

  def show
    @field = Field.find(params[:id])
    #trouve et affiche un terrain selectionné dans la show avec ses parametres
    authorize @field
    #ajout de markers sur la map prenant la long et lat.Une info window rend l'adresse du user
    # et du terrain.
  end
end
