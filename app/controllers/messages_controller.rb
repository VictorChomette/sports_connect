class MessagesController < ApplicationController
  def create
  @field = Field.find(params[:field_id])
  @chatroom = Chatroom.find(params[:id])
  @message = Message.new(message_params)
  @message.chatroom = @chatroom
  @message.user = current_user
  if @message.save
    redirect_to chatroom_path(@chatroom, anchor: "message-#{@message.id}")
  else
    render "chatrooms/show"
  end
  end

  private

  def message_params
    params.require(:message).permit(:user, :content)
  end
end
