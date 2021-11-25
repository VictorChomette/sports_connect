class UsersController < Devise::RegistrationsController
  def update
    super do |resource|
      resource.update(user_params)
    end
  end

  private

  def user_params
    devise_parameters_sanitizer.permit(:account_update, keys:[:password, :password_confirmation, :current_password, :photo])
  end
end
