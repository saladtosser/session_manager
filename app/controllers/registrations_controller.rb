class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)
    if @registration.save
      send_invite(@registration)
      redirect_to confirmation_path, notice: "Registration successful! Check your email or WhatsApp for the invite."
    else
      render :new
    end
  end

  def confirmation
    # Renders the confirmation page after registration
  end

  private

  def registration_params
    params.require(:registration).permit(:full_name, :email, :phone_number, :college)
  end

  def send_invite(registration)
    message = "You are invited to the session! Details: #{registration.college}"
    RegistrationMailer.invite_email(registration).deliver_now if registration.email.present?
    send_whatsapp_invite(registration.phone_number, message) if registration.phone_number.present?
  end

  def send_whatsapp_invite(number, message)
    client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
    client.messages.create(
      from: "whatsapp:#{ENV['TWILIO_PHONE_NUMBER']}",
      to: "whatsapp:#{number}",
      body: message
    )
  end
end
