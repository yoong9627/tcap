class UserMailer < ApplicationMailer
  default from: "yongy0221@gmail.com"

  def email(user)
    @user = user

    mail to: user.email, subject: "Test Email!"
  end
end
