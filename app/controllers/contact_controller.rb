class ContactController < ApplicationController
  def index
    @message = Message.new
  end

  def deliver
    @message = Message.new(message_params)
    if @message.save

      ContactMessage.send_message(@message).deliver
      flash[:notice] = "Twoja wiadomość została wysłana"
    else
      flash[:error] = "Nie udało się wysłać wiadomości. Spróbuj ponownie za chwilę"
    end

    redirect_to '/kontakt#form'
  end

  private
    def message_params
      params.require(:message).permit(:full_name, :email, :topic, :body)
    end
end
