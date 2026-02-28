class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)

    if message.save
      # Send email notification
      ContactMailer.new_message(message).deliver_now

      render json: {
        message: "Message saved and email delivered successfully!",
        message_data: message
      }, status: :created
    else
      render json: {
        errors: message.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :body)
  end

end
