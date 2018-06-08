class UserMailer < ApplicationMailer
  require 'date'

  default from: 'notifications@example.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://localhost:3000/users/sign_in'
    mail(to: @user.email, subject: 'Welcome the Coninna Crowdfunding Family')
  end

  def run
     if DateTime.now.day == 1
      User.find_each do |user|
        UserMailer.with(user: user).fundflow_email.deliver_now
      end
     end
  end

end
