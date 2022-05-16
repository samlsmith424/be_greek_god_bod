class Exercise < ApplicationRecord
  has_many :workout_exercises
  has_many :workouts, through: :workout_exercises
  validates_presence_of :name
  validates_presence_of :muscle_group
end
