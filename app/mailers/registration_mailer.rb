class RegistrationMailer < ApplicationMailer
  default from: 'mail@iraqitechclub.com'  # Default sender email

  def invite_email(registration)
    @registration = registration
    # Sending the email and rendering the view
    mail(
      to: @registration.email,
      subject: 'Session Invitation'
    ) do |format|
      format.html { render 'registration_mailer/invite_email' }  # Use the correct view path
      format.text { render 'registration_mailer/invite_email' }   # You can also include a text version if needed
    end
  end
end
