class Interval < ApplicationRecord
  belongs_to :workout_exercise
  validates_presence_of :reps
  validates_presence_of :weight_lbs
  validates_numericality_of :reps
  validates_numericality_of :weight_lbs
end
