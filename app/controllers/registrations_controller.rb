class RegistrationsController < ApplicationController
  before_action :load_event_sessions, only: [:new, :create]

  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)
    if @registration.save
      send_invite(@registration)
      redirect_to confirmation_path, notice: "Registration successful! Check your email or WhatsApp for the invite."
    else
      flash.now[:alert] = "There was an issue with your registration. Please fix the errors below."
      render :new
    end
  end

  def confirmation
    # Renders the confirmation page after registration
  end

  private

  # Strong parameters for registration
  def registration_params
    params.require(:registration).permit(:full_name, :email, :phone_number, :college, :event_session_id)
  end

  # Load available event sessions for the dropdown
  def load_event_sessions
    @event_sessions = EventSession.all.order(:date) # Order by date for a better user experience
  end

  # Send invites via email or WhatsApp
  def send_invite(registration)
    message = build_invitation_message(registration)
    
    send_email_invite(registration) if registration.email.present?
    send_whatsapp_invite(registration.phone_number, message) if registration.phone_number.present?
  end

  # Construct the invite message
  def build_invitation_message(registration)
    <<~MESSAGE
      Hello #{registration.full_name},
      You are invited to the session '#{registration.event_session&.name}' at #{registration.event_session&.location}.
      Please arrive on #{registration.event_session&.date&.strftime('%A, %d %b %Y')}.
      Thank you!
    MESSAGE
  end

  # Send an invite email
  def send_email_invite(registration)
    RegistrationMailer.invite_email(registration).deliver_now
  rescue StandardError => e
    Rails.logger.error "Failed to send email invite: #{e.message}"
  end

  # Send a WhatsApp invite using Twilio
  def send_whatsapp_invite(number, message)
    client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
    client.messages.create(
      from: "whatsapp:#{ENV['TWILIO_PHONE_NUMBER']}",
      to: "whatsapp:#{number}",
      body: message
    )
  rescue Twilio::REST::RestError => e
    Rails.logger.error "Failed to send WhatsApp message: #{e.message}"
  end
end
