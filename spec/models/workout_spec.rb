require 'rails_helper'

RSpec.describe Workout, type: :model do

  describe 'relationships' do
    it { should belong_to(:user) }
    it { should have_many :workout_exercises }
    it { should have_many(:exercises).through(:workout_exercises) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'class methods' do
    it 'can choose a workout sample where status is completed' do
      user_1 = User.create!(name: 'user_1', password: 'password1')

      workout_1 = Workout.create!(name: 'killer chest day', user_id: "#{user_1.id}", status: 'completed' )
      workout_2 = Workout.create!(name: 'killer back day', user_id: "#{user_1.id}", status: 'completed' )
      workout_3 = Workout.create!(name: 'killer leg day', user_id: "#{user_1.id}", status: 'in progress' )

      expect(Workout.random_sample).to eq(workout_1).or eq(workout_2)
      expect(Workout.random_sample).to_not eq(workout_3)
    end
  end
end
