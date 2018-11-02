class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user
    before_action :require_logged_in, except: [:new, :create, :home]

private
  def current_user
    session[:user_id] = params[:user_id]
  end

end
