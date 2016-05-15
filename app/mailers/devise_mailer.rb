class MyMailer < Devise::Mailer
  helper :application # gives access to all helpers defined within `application_helper`.
  include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
  default template_path: 'devise/mailer' # to make sure that your mailer uses the devise views

  default_from: "admin@paralegal.com"

  def confirmation(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to the Paralegal Site!")
  end
end
