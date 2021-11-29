class FieldsController < ApplicationController
  include Searchable

  def index
    @fields = Field.includes(:sports)
    search
    @fields = @fields.page(params[:page]).per(5)

    @markers = @fields.geocoded.map do |field|
      {
        lng: field.longitude,
        lat: field.latitude,
        info_window: render_to_string(partial: "info_window_fields", locals: { field: field }),
        image_url: helpers.asset_url("field.png")
      }
    end

    if params.dig(:query, :localisation).present?
      @address = params.dig(:query, :localisation)
      @markers << geocode_location
    end
  end

  def show
    @field = Field.find(params[:id])
    @review = Review.new

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
    if params.dig(:query, :localisation).present?
      @markers << geocode_location
    end

    @presence = Presence.new
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
