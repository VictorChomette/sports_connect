class PresencesController < ApplicationController
  # before_action :set_field

  def index
    @presences = current_user.presences
  end

  # private

  # def set_field
  #   @field = Field.find(params[:field_id])
  # end
end
