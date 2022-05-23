class Api::V1::WorkoutsController < ApplicationController

  def index
    @workout = SuggestedFacade.suggest
    render json: {data: @workout.serializable_hash(include: :exercises )}, status: 200
  end
end
