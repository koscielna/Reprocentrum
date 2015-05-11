class ContactMessage < ApplicationMailer
  default from: 'repro@reprocentrum.com'

  def send_message message
    @message = message
    mail(to: @message.email, subject: @message.topic)
  end
end
