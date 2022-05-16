class Api::V1::UserController < ApplicationController

  def index
    require "pry"; binding.pry
    user = User.first
    chest = Exercise.first

    user_obj = UserPoro.new(user, user.workouts, chest, )
  end

end
