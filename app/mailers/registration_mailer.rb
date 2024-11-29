def invite_email(registration)
  @registration = registration

  Rails.logger.info "Sending session invitation email to #{@registration.email}"

  mail(
    to: @registration.email,
    subject: 'Session Invitation'
  ) do |format|
    format.html { render 'registration_mailer/invite_email' }
  end

  Rails.logger.info "Email successfully sent to #{@registration.email}"
end
