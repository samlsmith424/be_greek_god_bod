class ExercisePoro
  attr_reader :equipment,
              :gif_url,
              :name,
              :intervals

  def initialize(exercise)
    @id = exercise.id
    @name = exercise.name
    @equipment = exercise.equipment
    @gif_url = exercise.gif
    @intervals = exercise.intervals[0].intervals
  end
end
