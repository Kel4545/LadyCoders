class UserMailer < ActionController::Base
  default from: 'notifications@localhost.com'

  def welcome_email(user)
    @user = user
    @url = root_url

    mail(to: @user.email, subject: 'Welcome to my site')
  end

  def login_email(user)
    @user = user
    @url = root_url

    mail(to: @user.email, subject: 'Thanks for logging in')
  end
end




