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
    @intervals = set_intervals(exercise)
  end

  def set_intervals(exercise)
    if exercise.nil?
      []
    else
      exercise.intervals[0].intervals
    end
  end
end
