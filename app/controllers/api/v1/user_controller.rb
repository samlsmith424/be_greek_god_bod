class Api::V1::UserController < ApplicationController

  def index
    user = User.first
    chest = Exercise.first
    user_obj = UserPoro.new(user, user.workouts, chest)
    render json: UserSerializer.new(user_obj)
  end

end
