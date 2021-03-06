class MessagesController < ApplicationController
  def create
    @field = Field.find(params[:field_id])
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user

    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: {message: @message})
      )
    end
  end


  private

  def message_params
    params.require(:message).permit(:user, :content)
  end
end
