mount ActionCable.server => "/cable"

class SocialChannel < ApplicationCable::Channel

  def subscribed
    social = Social.first
    stream_for social
# stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
