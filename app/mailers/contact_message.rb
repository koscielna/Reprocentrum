class ContactMessage < ApplicationMailer
  default from: 'repro@reprocentrum.com'

  def send_confirmation message
    @message = message
    mail(to: @message.email, subject: 'Potwierdzenie nadania wiadomości')
  end

  def send_message message
    @message = message
    mail(return_path: @message.email, to: 'repro@reprocentrum.com', subject: @message.topic)
  end
end
