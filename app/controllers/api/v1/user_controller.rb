class Api::V1::UserController < ApplicationController

  def index
    user = User.find(params[:id])
    user_obj = UserPoro.new(user, user.workouts)
    render json: UserSerializer.new(user_obj)
  end

end
