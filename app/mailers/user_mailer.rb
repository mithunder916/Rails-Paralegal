class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email(user)
    recipients user.email
    from "webmaster@paralegal.com"
    subject "Welcome to the Wake County Title Record App"
    body user: user
  end
end
