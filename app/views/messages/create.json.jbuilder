if @message.persisted?
  json.form json.partial!('messages/form.html.erb', field: @field, chatroom: @chatroom, message: Message.new)
  json.inserted_item json.partial!('restaurants/review.html.erb', message: @message)
else
  json.form json.partial!('reviews/form.html.erb', field: @field, chatroom: @chatroom, message: @message)
end
