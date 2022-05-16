class UserPoro
  attr_reader

  def initialize(user, workouts, exercises, set)
    @user = user
    @workouts = workouts
    @exercises = exercises
    @set = set
  end

end
