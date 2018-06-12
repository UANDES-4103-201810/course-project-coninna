class MoneyMailer < ApplicationMailer
  def funding_confirmation(user, fund)
    @user = user
    @fund = fund
    mail(to: @user.email, :subject => "Funding Confirmation")
  end
end
