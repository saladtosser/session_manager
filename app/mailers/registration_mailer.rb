class RegistrationMailer < ApplicationMailer
  default from: 'mail@iraqitechclub.com'

  def invite_email(registration)
    @registration = registration

    # Log for debugging
    Rails.logger.info "Preparing to send session invitation email to #{@registration.email}"

    # Construct and send the email
    mail(
      to: @registration.email,
      subject: 'ITC Session Invitation'
    ) do |format|
      format.html { render 'registration_mailer/invite_email' }
    end

    # Log success
    Rails.logger.info "Invitation email sent successfully to #{@registration.email}"
  rescue StandardError => e
    Rails.logger.error "Error sending email to #{@registration.email}: #{e.message}"
  end
end

