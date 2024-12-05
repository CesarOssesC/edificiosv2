class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern


  def soy_admin?
    if user_signed_in? && current_user.admin?
      redirect_to root_path, notice: "No tienes permiso para realizar esta acción. Por favor, inicia sesión o regístrate."
    end
  end

  def soy_conserje?
    if user_signed_in? && current_user.conserje?
      redirect_to root_path, notice: "No tienes permiso para realizar esta acción. Por favor, inicia sesión o regístrate."
    end
  end

  def soy_usuario
    if user_signed_in? && current_user.usuario?
      redirect_to root_path, notice: "No tienes permiso para realizar esta acción. Por favor, inicia sesión o regístrate."
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nombre])
  end
end
