class Api::V1::ExercisesController < ApplicationController
  def index
    exercises = ExerciseFacade.find_all_exercises #(params[:all])
    render json: ExerciseSerializer.new(exercises)
  end
end
