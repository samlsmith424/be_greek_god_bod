class Api::V1::SocialController < ApplicationController

  def index
    messages = Message.all
    render json: messages
  end

  def create
    puts "Look here: #{params}"
    user = User.find_by(name: params[:name])
    channel = Social.first
    message = Message.create!(
      content: params[:content],
      name: user.name,
      social_id: channel.id,
      user_id: user.id
    )

    SocialChannel.broadcast_to(channel, message)
    render json: message
  end

end
