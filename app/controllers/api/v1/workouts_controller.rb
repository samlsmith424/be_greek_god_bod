class Api::V1::WorkoutsController < ApplicationController

  def index
    @workout = SuggestedFacade.suggest
    render json: SuggestedSerializer.new(@workout), status: 200
  end
end
