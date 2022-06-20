class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session

    before_action :update_allowed_parameters, if: :devise_controller?

    protected

    def update_allowed_parameters
        devise_parameter_sanitizer.permit(:sign_up) do |u|
        u.permit(:name, :email, :password, :password_confirmation, :phone, :facebook)
        end
        devise_parameter_sanitizer.permit(:account_update) do |u|
        u.permit(:name, :email, :password, :password_confirmation, :phone, :facebook)
        end

        devise_parameter_sanitizer.permit(:sign_in) do |u|
        u.permit(email, :password)
        end
    end

end
