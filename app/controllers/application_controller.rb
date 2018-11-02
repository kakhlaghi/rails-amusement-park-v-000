class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user
  before_action :require_logged_in, except: [:new, :create, :home]

  def logged_in?
      !!current_user
    end
  
    private
      def require_logged_in
        redirect_to root_path unless logged_in?
      end


private
  def current_user
    session[:user_id] = params[:user_id]
  end

end
