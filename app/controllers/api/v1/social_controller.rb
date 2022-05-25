class Api::V1::SocialController < ApplicationController

  def index
    messages = Message.all

    render json: messages
  end

  def create
    
  end

end
