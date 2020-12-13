class RegistrationsController < Devise::RegistrationsController
  skip_before_action :set_sidebar, only: [:destroy]

  private

  def sign_up_params
    params.require(:account).permit(:first_name, :last_name, :email, :password, :password_confirmation, :url, :remember_me)
  end

  def account_update_params
    params.require(:account).permit(:first_name, :last_name, :email, :password, :password_confirmation, :url, :current_password)
  end
end
