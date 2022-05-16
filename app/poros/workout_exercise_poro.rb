class WorkoutExercisePoro
  attr_reader :intervals

  def initialize(workout)
    @intervals = workout.intervals
  end
end
