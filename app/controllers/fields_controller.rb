class FieldsController < ApplicationController
  def index
    # @fields = Field.all
    @fields = Field.page(params[:page]).per(5)

    #affiche tout les terrains
    #affiche tout les markers sur la map
    # unless !session[:address].nil?
    #   session[:address] = params[:query][:localisation]
    # end

    @markers = @fields.geocoded.map do |field|
      {
        lng: field.longitude,
        lat: field.latitude,
        info_window: render_to_string(partial: "info_window_fields", locals: { field: field }),
        image_url: helpers.asset_url("field.png")
      }
    end

    if params.dig(:query, :localisation).present?
      @markers << geocode_location
    end
  end

  def show
    @field = Field.find(params[:id])
    #trouve et affiche un terrain selectionné dans la show avec ses parametres
    # authorize @field
    #ajout de markers sur la map prenant la long et lat.Une info window rend l'adresse du user
    # et du terrain.
    @markers = [{
      lng: @field.longitude,
      lat: @field.latitude,
      info_window: render_to_string(partial: "info_window_fields", locals: { field: @field }),
      image_url: helpers.asset_url("field.png")
    }]
    # @markers = [{
    #   lng: @field.longitude,
    #   lat: @field.latitude,
    #   info_window: render_to_string(partial: "info_window_fields", locals: { field: @field }),
    #   field_type: @field.sports.pluck(:name)
    # }]
    unless session[:address].empty?
      latitude = Geocoder.search(session[:address]).first.coordinates[0]
      longitude = Geocoder.search(session[:address]).first.coordinates[1]

      @markers << {
        lng: longitude,
        lat: latitude,
        info_window: render_to_string(partial: "info_window", locals: { user: current_user }),
        image_url: helpers.asset_url("user.png")
      }
    end
  end


    private

    def geocode_location
      coordinates = Geocoder.search(params.dig(:query, :localisation))
                            .first.data.dig('features')
                            .first.dig('geometry', 'coordinates')

      {
        lat: coordinates.last,
        lng: coordinates.first,
        info_window: render_to_string(partial: "info_window"),
        image_url: helpers.asset_url("user.png")
      }
    end
end
