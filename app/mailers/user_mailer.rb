class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def playd_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.inspect, subject: 'Save your playd games')
  end

end
