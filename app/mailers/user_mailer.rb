class UserMailer < ActionMailer::Base
  #encoding: utf-8
  default from: "C.Best Ideas<notifications@example.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account Activation"
    sent_on Time.now
    content_type "text/html"

  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password Reset Request"
    sent_on Time.now
    content_type "text/html"
  end
end
