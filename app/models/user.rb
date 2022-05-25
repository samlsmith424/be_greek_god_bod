class User < ApplicationRecord
  has_many :workouts
  has_many :messages
  has_many :workout_exercises, through: :workouts
  has_many :exercises, through: :workout_exercises

  validates_presence_of :name
  validates_presence_of :password

end
