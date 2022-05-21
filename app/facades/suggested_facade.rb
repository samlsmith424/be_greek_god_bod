class SuggestedFacade
  def self.suggest
    Workout.random_sample
  end
end
