require 'rails_helper'

RSpec.describe "Exercise Request", type: :request do
  it "returns a list of exercises" do
    VCR.use_cassette("many jobs") do
      get "/api/v1/exercises"

      expect(response).to have_http_status(:success)
    end
  end
end
