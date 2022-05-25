class WorkoutFacade
  def self.create_regimen(params, workout_id)
    exercises = params.map do |exercise|
      details = Exercise.create!(name: exercise[:name], gif: exercise[:gifUrl], equipment: exercise[:equipment])
      instance = WorkoutExercise.create!(workout_id: workout_id, exercise_id: details.id )
    end
  end

  def self.update_regimen(params)
    data = params.map do |interval|
      instance = WorkoutExercise.find_by(id: interval[:id])
      puts params
      puts interval
      interval[:intervals].each do |sets|
        instance = WorkoutExercise.find_by(id: sets[:workout_exercise_id])
        instance.intervals.create!(reps: sets[:reps], weight_lbs: sets[:weight_lbs])
      end
    end
    # change status to completed
  end
end
