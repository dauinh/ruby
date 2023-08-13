class ChatsController < ApplicationController
  def index
    @conversations = Conversation.all
  end
end
