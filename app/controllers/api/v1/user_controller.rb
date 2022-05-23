class Api::V1::UserController < ApplicationController
  before_action :find_user, only: [:show, :create]

  def show
    user_obj = UserPoro.new(@user, @user.workouts)
    render json: UserSerializer.new(user_obj)
  end

  def create
    @workout = @user.workouts.create(name: params[:name])
    @exercises = WorkoutFacade.create_regimen(params[:exercises], @workout.id)
    render json: CreateWorkoutSerializer.new(@workout), status: 201
  end

  def update
    WorkoutFacade.update_regimen(params[:data])
    render json: {message: "Workout Completed"}, status: 200
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
