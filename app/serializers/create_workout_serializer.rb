class CreateWorkoutSerializer
  include JSONAPI::Serializer

  set_id :id
  set_type 'workout'
  attributes :name, :exercises
end
