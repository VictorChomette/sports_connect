class PresencesController < ApplicationController
  before_action :set_field

  def index
    @presences = Presence.all
    @presences.field = @field
  end

  private

  def set_field
    @field = Field.find(params[:field_id])
  end
end
