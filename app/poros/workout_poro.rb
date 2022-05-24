class WorkoutPoro
  include ActiveModel::Serialization
  attr_accessor :id, :name, :exercises

  def initialize(workout)
    @id = workout.id
    @name = workout.name
    @exercises = set_exercises(workout.exercises)
  end

  def set_exercises(exercises)
    exercises.map do |exercise|
      ExercisePoro.new(exercise)
    end
  end
end
