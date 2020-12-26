class RegistrationsController < Devise::RegistrationsController
  skip_before_action :set_sidebar, only: [:destroy]

  private

  def sign_up_params
    params.require(:account).permit(:first_name, :last_name, :email, :password, :password_confirmation, :company, :remember_me, :image, :telephone)
  end

  def account_update_params
    params.require(:account).permit(:first_name, :last_name, :email, :password, :password_confirmation, :company, :current_password, :image, :telephone)
  end
end
