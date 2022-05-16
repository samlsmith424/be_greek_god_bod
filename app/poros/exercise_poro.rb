class ExercisePoro
  attr_reader :body_part,
              :equipment,
              :gif_url,
              :id,
              :name,
              :target_muscle

  def initialize(exercise)
    @body_part = exercise[:bodyPart]
    @equipment = exercise[:equipment]
    @gif_url = exercise[:gifUrl]
    @id = exercise[:id]
    @name = exercise[:name]
    @target_muscle = exercise[:target]
  end
end
