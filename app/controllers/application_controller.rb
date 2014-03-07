class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    rescue_from CanCan::AccessDenied do |exception|

      #sign_out :user if user_signed_in?
      redirect_to root_path, notice: exception.message

    end
end
