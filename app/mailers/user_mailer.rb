class UserMailer < ActionMailer::Base
  default :from => "notifications@example.com"
  
  def welcome_email(user)
    mail(:to => user.email, :subject => "Invitation Request Received")
    headers['X-MC-GoogleAnalytics'] = "example.com"
    headers['X-MC-Tags'] = "welcome"
  end
end