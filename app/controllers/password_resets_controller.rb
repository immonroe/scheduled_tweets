class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      # Send the password reset email
      PasswordMailer.with(user: @user).reset.deliver_now
      redirect_to root_path,
                  notice: 'If an account with that email was found, we have sent a link to reset the password.'
    else
      redirect_to password_reset_edit_path, alert: 'No account found with that email address.'
    end
  end
end
