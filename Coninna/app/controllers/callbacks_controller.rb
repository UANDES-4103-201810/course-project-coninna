class CallbacksController < Devise::OmniauthCallbacksController
  def facebook
  @user = User.from_omniauth(request.env["omniauth.auth"] )
  sign_in @user
    redirect_to edit_user_registration_path





  end
end