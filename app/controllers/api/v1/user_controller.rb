class Api::V1::UserController < ApplicationController

  def index
    user = User.find(params[:id])
    user_obj = UserPoro.new(user, user.workouts)
    render json: UserSerializer.new(user_obj)
  end

  def create
    @user = User.find_by(id: params[:id])
    @workout = @user.workouts.create(name: params[:name])
    @exercises = params[:exercises].map do |exercise|
      @details = Exercise.create!(name: JSON.parse(exercise.to_json, symbolize_names: true))
      @instance = WorkoutExercise.create!(workout_id: @workout.id, exercise_id: @details.id )
    end
    render json: CreateWorkoutSerializer.new(@exercises), status: 201
  end

  def update
    data = params[:data].map do |interval|
      @instance = WorkoutExercise.find_by(id: interval[:id])
      interval[:intervals].each do |sets|
        @instance.intervals.create!(reps: sets[:reps] , weight_lbs: sets[:weight_lbs])
      end
    end
    render json: {message: "Workout Completed"}, status: 200
  end
end
