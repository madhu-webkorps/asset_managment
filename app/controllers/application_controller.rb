class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?
    def after_sign_in_path_for(resource)
        if current_user.role == 'admin'
          admins_path
        else
          root_path
        end
    end
  
  # devise permit parameters
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user|
        user.permit(:email, :name, :password, :role, :password_confirmation)
      end
  end

end
