class CreateWorkoutSerializer
  include JSONAPI::Serializer

  set_type 'workout'

  attribute :exercises
end
