class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @sports = Sport.all.map { |sport| sport.name}
  end

  def profile
    if params.dig(:user_id).present?
      @user = User.find(params.dig(:user_id))
    else
      @user = current_user
    end
  end
end
