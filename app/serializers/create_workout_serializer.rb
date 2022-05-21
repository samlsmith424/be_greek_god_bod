class CreateWorkoutSerializer
  include JSONAPI::Serializer

  set_type 'workout'

  attributes :workout
  attribute :exercise
end
