# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/login
  # def new
  #   super
  # end

  # POST /resource/login
  def create
    add_message(:notice, "Привет, #{current_user.full_name}!") if user_signed_in?
    super
  end

  # DELETE /resource/logout
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
