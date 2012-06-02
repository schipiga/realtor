class MessagesController < ApplicationController

  def new
    @message = Message.new(:flat_id => params[:flat_id])
  end

  def create
    @message = Message.new(params[:message])
    @message.save
    redirect_to root_path
  end
end
