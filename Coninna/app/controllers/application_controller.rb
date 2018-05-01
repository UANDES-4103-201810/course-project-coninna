class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :is_user_logged_in?, :current_user, :is_admin_logged_in?, :current_admin
  def index

  end

  def current_user
    @current_user ||= User.find_by(id: cookies.signed[:user_id])

  end

  def current_admin
    @current_admin ||= Admin.find_by(id: cookies.signed[:admin_id])

  end

  def is_user_logged_in?
    current_user.present?
      logged_in = false
        if logged_in
          then true

        end

  end

  def is_admin_logged_in?
    current_admin.present?
    logged_in = false
    if logged_in
    then true
    end

  end
end
