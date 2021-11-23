class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @sports = Sport.all.map { |sport| sport.name}
  end
end
