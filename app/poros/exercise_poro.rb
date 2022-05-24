class ExercisePoro
  attr_reader :equipment,
              :gif_url,
              :name,
              :intervals

  def initialize(exercise)
    @name = exercise.name
    @equipment = exercise.equipment
    @gif_url = exercise.gif
    @intervals = exercise.intervals
  end
end
