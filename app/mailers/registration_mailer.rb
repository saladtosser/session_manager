class RegistrationMailer < ApplicationMailer
  default from: 'mail@iraqitechclub.com'  # Default sender email

  def invite_email(registration)
    @registration = registration

    # Log to check if the email method is being called
    Rails.logger.info "Sending session invitation email to #{@registration.email}"

    # Sending the email and rendering the view
    mail(
      to: @registration.email,
      subject: 'Session Invitation'
    ) do |format|
      format.html { render 'registration_mailer/invite_email' }  # Use the correct view path
      format.text { render 'registration_mailer/invite_email' }   # You can also include a text version if needed
    end

    # Log after the email has been sent
    Rails.logger.info "Email successfully sent to #{@registration.email}"
  end
end
