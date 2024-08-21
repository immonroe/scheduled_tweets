class ApplicationController < ActionController::Base
  before_action :set_current_user

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def set_current_user
    return unless session[:user_id]

    Current.user = User.find_by(id: session[:user_id])
  end

  def require_user_logged_in!
    redirect_to sign_in_path, alert: 'You must be signed in to do that' if Current.user.nil?
  end
end
