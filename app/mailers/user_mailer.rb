class UserMailer < ApplicationMailer
    default from: 'umirz87@gmail.com'

  def welcome_email
    @user = params[:user]
    @lead = params[:lead]
    @phase = params[:phase]
    mail(to: @user.email, subject: 'Use Link to Accept or Comment')
  end
end
