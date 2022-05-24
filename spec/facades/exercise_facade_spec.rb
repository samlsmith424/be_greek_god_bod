require 'rails_helper'

RSpec.describe 'ExerciseFacade' do
  it 'returns a list a exercises' do
    VCR.use_cassette("exercise facade") do

      exercises = ExerciseFacade.find_all_exercises

      expect(exercises).to be_an(Array)
      exercises.each do |exercise|
        expect(exercise).to be_an(ExercisePoro)
        expect(exercise.body_part).to be_a(String)
        expect(exercise.equipment).to be_a(String)
        expect(exercise.gif_url).to be_a(String)
        expect(exercise.id).to be_a(String)
        expect(exercise.target_muscle).to be_a(String)
      end
    end
  end
end
