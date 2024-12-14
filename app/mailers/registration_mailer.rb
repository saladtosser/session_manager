class RegistrationMailer < ApplicationMailer
  default from: 'mail@iraqitechclub.com'

  def invite_email(registration)
    @registration = registration

    # Log for debugging
    Rails.logger.info "[Mailer] Preparing to send session invitation email to #{@registration.email}"

    # Construct and send the email
    mail(
      to: @registration.email,
      subject: 'ITC Session Invitation'
    ) do |format|
      format.html # This automatically looks for the `invite_email.html.erb` template
    end

    # Log success
    Rails.logger.info "[Mailer] Invitation email sent successfully to #{@registration.email}"
  rescue StandardError => e
    # Log error for better debugging
    Rails.logger.error "[Mailer] Error sending email to #{@registration.email}: #{e.message}"
  end
end
