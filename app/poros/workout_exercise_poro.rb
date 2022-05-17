class WorkoutExercisePoro
  attr_reader :intervals

  def initialize(workout)
    @time = workout.created_at
    @intervals = workout.intervals
  end
end
