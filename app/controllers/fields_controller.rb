class FieldsController < ApplicationController
  def index
    @fields = Field.all
  end

  def show
    @fields = Fields.find(params[:id])
  end


end
