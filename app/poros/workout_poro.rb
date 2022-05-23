class WorkoutPoro
  include ActiveModel::Serialization
  attr_accessor :workout_exercises

  def initialize(workout)
    @name = workout.name
    @exercises = workout.exercises
    @workout_instance = set_workout_exercises(workout.workout_exercises)
  end

  def set_workout_exercises(workout_exercises)
    workout_exercises.map do |workout_exercise|
      WorkoutExercisePoro.new(workout_exercise)
    end
  end
end
