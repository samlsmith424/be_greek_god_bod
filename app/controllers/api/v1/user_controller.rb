class Api::V1::UserController < ApplicationController
  before_action :find_user, only: [:show, :create]

  def index
    users = User.all
    render json: users, status: 200
  end

  def show
    user_obj = UserPoro.new(@user, @user.workouts)
    render json: user_obj, status: 200
  end

  def create
    @workout = @user.workouts.create(name: params[:name])
    @exercises = WorkoutFacade.create_regimen(params[:exercises], @workout.id)
    render json: {data: @workout.serializable_hash(include: { exercises: { methods: :intervals }})}, status: 200
  end

  def update
    WorkoutFacade.update_regimen(params)
    render json: {message: "Workout Completed"}, status: 200
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
