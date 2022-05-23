class Workout < ApplicationRecord
  include ActiveModel::Serialization

  belongs_to :user
  has_many :workout_exercises
  has_many :exercises, through: :workout_exercises
  validates_presence_of :name

  def self.random_sample
    all.where(status:'completed').sample
  end

  # def exercises
  #   self.exercises
  # end
end
