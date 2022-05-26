require 'rails_helper'

RSpec.describe Exercise, type: :model do

  describe 'relationships' do
    it { should have_many :workout_exercises }
    it { should have_many(:workouts).through(:workout_exercises) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
