class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.all
  end

  def show
    @conversation = Conversation.find(params[:id])
    @messages = @conversation.messages
  end

  def def new
    @conversation = Conversation.new
  end
  
  def create
    @conversation = Conversation.new(params[:conversation])
    if @conversation.save
      flash[:success] = "Conversation successfully created"
      redirect_to @conversation
    else
      flash[:error] = "Something went wrong"
      render 'new', status: :unprocessable_entity
    end
  end
  
end
