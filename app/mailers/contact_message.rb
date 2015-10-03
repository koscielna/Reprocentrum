class ContactMessage < ApplicationMailer
  default from: 'repro@reprocentrum.com'

  def send_confirmation message
    @message = message
    mail(to: @message.email, subject: 'Potwierdzenie nadania wiadomości')
  end

  def send_message message
    @message = message
    mail(reply_to: @message.email,
         to: 'repro@reprocentrum.com',
         subject: 'Przekierowanie z reprocentrum.com: ' + @message.topic)
  end
end
