class CreateWorkoutSerializer
  include JSONAPI::Serializer

  set_type 'workout'

  attribute :workout
  attribute :exercise
end
