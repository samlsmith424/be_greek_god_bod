class UserSerializer
  include JSONAPI::Serializer
  set_id :id
  set_type 'user'

  attributes :current_weather, :daily_weather, :hourly_weather
end
