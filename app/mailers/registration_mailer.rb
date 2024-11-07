class RegistrationMailer < ApplicationMailer
  def invite_email(registration)
    @registration = registration
    mail(to: @registration.email, subject: 'Session Invitation')
  end
end

