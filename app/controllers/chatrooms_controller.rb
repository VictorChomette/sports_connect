class ChatroomsController < ApplicationController
  def show
    @field = Field.find(params[:field_id])
    @chatroom = Chatroom.find(@field.chatroom.id)
    @message = Message.new
  end
end
