module SmsTool
  # In ENV use the twilio number your messaging from send to Your phone number for the console like below
  account_sid = ENV['TWILIO_ACCOUNT_SID']
  auth_token = ENV['TWILIO_AUTH_TOKEN']

  @client = Twilio::REST::Client.new account_sid, auth_token

  def self.send_sms(number:, message:)
    @client.messages.create(
      from: ENV['TWILIO_PHONE_NUMBER'],
      to: "+1#{number}",
      body: "#{message}"
  )
  end
end

# put this in the rails console and run. USE your phone phone to send too.
# SmsTool.send_sms(number: '8018677059', message: "Look at me, I'm in a text")