class UserSerializer
  include JSONAPI::Serializer


  set_id :id
  set_type 'user'

  attribute :workouts

end
