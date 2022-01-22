class MessagesController < ApplicationController

  def create
    @message = Message.create(params.require(:message).permit(:user_id, :message, :movie_id).merge(:user_id => current_user.id))
    redirect_to movie_path(@message.movie_id)
  end

end
