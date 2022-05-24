class Exercise < ApplicationRecord
  include ActiveModel::Serialization

  has_many :workout_exercises
  has_many :workouts, through: :workout_exercises
  has_many :intervals, through: :workout_exercises
  validates_presence_of :name

  def intervals
    self.workout_exercises.joins(:intervals)
  end
end
