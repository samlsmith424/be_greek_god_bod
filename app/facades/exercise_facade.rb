class ExerciseFacade
  def self.find_all_exercises
    exercises = ExerciseService.get_all_exercises
    exercises.map do |exercise|
      ExercisePoro.new(exercise)
    end
  end
end
