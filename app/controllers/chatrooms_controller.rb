class ChatroomsController < ApplicationController
  def show
    @group = Group.find(params[:group_id])
    @chatroom = @group.chatroom
    @message = Message.new
  end
end
