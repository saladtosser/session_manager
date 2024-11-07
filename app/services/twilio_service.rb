class TwilioService
  def initialize
    @client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
  end

  def send_whatsapp_message(to:, body:)
    @client.messages.create(
      from: ENV['TWILIO_WHATSAPP_NUMBER'],
      to: "whatsapp:#{to}",
      body: body
    )
  end
end
