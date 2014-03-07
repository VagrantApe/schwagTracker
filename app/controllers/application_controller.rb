class ApplicationController < ActionController::Base

    helper :all

    protect_from_forgery

    rescue_from CanCan::AccessDenied do |exception|
    sign_out :user if user_signed_in?
    redirect_to new_user_session_path, :alert => exception.message
  end
end
