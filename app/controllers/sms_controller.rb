class SmsController < ApplicationController


  def index
    # move this code to a better method - create?
    account_sid = 'AC7bc817f4e4002f96c8bf6b3dcf55185d'
    auth_token = 'bbce4480dc209e021c56f2d8147657f7'
    client = Twilio::REST::Client.new(account_sid, auth_token)


    from = '+14806909498' # Your Twilio number
    #to = '+14802808913' # Your mobile phone number
    to = params['to']
    m = Message.find(params['message_id'])


    client.messages.create(
    from: from,
    to: to,
    body: m.message
    )

  end

  def show
    account_sid = 'AC7bc817f4e4002f96c8bf6b3dcf55185d'
    auth_token = 'bbce4480dc209e021c56f2d8147657f7'
    @client = Twilio::REST::Client.new(account_sid, auth_token)

call = @client.calls.create(
    to: "+14802808913",
    from: "+14806909498",
    url: "http://demo.twilio.com/docs/voice.xml")
    puts call.to
  end
end
