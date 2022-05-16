require 'rails_helper'

RSpec.describe 'ExerciseService' do

  it 'can return all a list of all exercises' do
    VCR.use_cassette("exercise service") do
      exercises = ExerciseService.get_all_exercises

      expect(exercises).to be_an Array
      exercises.each do |exercise|
        expect(exercise).to be_a(Hash)
        expect(exercise).to have_key(:bodyPart)
        expect(exercise[:bodyPart]).to be_a(String)

        expect(exercise).to have_key(:equipment)
        expect(exercise[:equipment]).to be_a(String)

        expect(exercise).to have_key(:gifUrl)
        expect(exercise[:gifUrl]).to be_a(String)

        expect(exercise).to have_key(:id)
        expect(exercise[:id]).to be_a(String)

        expect(exercise).to have_key(:name)
        expect(exercise[:name]).to be_a(String)

        expect(exercise).to have_key(:target)
        expect(exercise[:target]).to be_a(String)
      end
    end
  end
end
