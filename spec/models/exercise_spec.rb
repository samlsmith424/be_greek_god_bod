require 'rails_helper'

RSpec.describe Exercise, type: :model do

  describe 'relationships' do
    it { should have_many :workout_exercises }
    it { should have_many(:workouts).through(:workout_exercises) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'instance methods' do
    it 'can attain the intervals for each exercise' do
      user_1 = User.create!(name: 'user_1', password: 'password1')
      workout_1 = Workout.create!(name: 'killer chest day', user_id: "#{user_1.id}", status: 'completed' )
      exercise_1 = Exercise.create!(name: 'barbell bench press', gif: "http://d205bpvrqc9yn1.cloudfront.net/0025.gif", equipment: "barbell")
      workout_exercise_1 = WorkoutExercise.create!(workout_id: "#{workout_1.id}", exercise_id: "#{exercise_1.id}")
      interval = Interval.create!(reps: 12, weight_lbs: 185, workout_exercise_id: "#{workout_exercise_1.id}")

      # allow(exercise_1).to receive(:joins).and_return(:intervals)
      # expect(exercise_1.intervals).to eq(interval)

      expect(exercise_1.intervals).to be_a(x)
    end
  end
end
