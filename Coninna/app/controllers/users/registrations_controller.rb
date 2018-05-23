class Users::RegistrationsController < Devise::RegistrationsController

  def sign_up_params
    params.require(:user).permit(:name, :user_name, :admin, :phone,  :email, :password, :dob, :credit_card_info, :address, :country, :password_confirmation, :current_password)
  end

  def account_update_params
    params.require(:user).permit(:name, :user_name, :admin, :phone, :email, :password, :dob, :credit_card_info, :address, :country, :password_confirmation, :current_password)
  end
end
