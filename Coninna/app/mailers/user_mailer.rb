class UserMailer < ApplicationMailer
  require 'date'

  default from: 'notifications@example.com'

  def welcome_email
    @user = current_user
    @url  = 'http://localhost:3000/users/sign_in'
    mail(to: @user.email, subject: 'Welcome the Coninna Crowdfunding Family')
  end

end
