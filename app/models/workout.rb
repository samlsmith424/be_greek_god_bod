class Workout < ApplicationRecored
  belongs_to :user
  has_many :workout_exercises
end
