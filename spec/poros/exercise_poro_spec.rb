require "rails_helper"

RSpec.describe 'Exercise Poro' do
  it "exists with attributes" do
    data = Exercise.create(equipment: "body weight", gif: "http://d205bpvrqc9yn1.cloudfront.net/0001.gif", name: "3/4 sit-up")

    exercise = ExercisePoro.new(data)

    expect(exercise).to be_a(ExercisePoro)
    expect(exercise.equipment).to eq("body weight")
    expect(exercise.gif_url).to eq("http://d205bpvrqc9yn1.cloudfront.net/0001.gif")
    expect(exercise.id).to be_an(Integer)
    expect(exercise.name).to eq("3/4 sit-up")
  end

  it "returns an empty array if there are no intervals" do
    data = Exercise.create(equipment: "body weight", gif: "http://d205bpvrqc9yn1.cloudfront.net/0001.gif", name: "3/4 sit-up")

    exercise = ExercisePoro.new(data)
    expect(exercise.intervals).to eq([])
  end

  it "returns an empty array if there are no intervals" do
    user_1 = User.create!(name: 'user_1', password: 'password1')
    workout_1 = Workout.create!(name: 'killer chest day', user_id: "#{user_1.id}", status: 'completed' )
    exercise_1 = Exercise.create!(name: 'barbell bench press', gif: "http://d205bpvrqc9yn1.cloudfront.net/0025.gif", equipment: "barbell")
    workout_exercise_1 = WorkoutExercise.create!(workout_id: "#{workout_1.id}", exercise_id: "#{exercise_1.id}")
    interval = Interval.create!(reps: 12, weight_lbs: 185, workout_exercise_id: "#{workout_exercise_1.id}")
# require "pry"; binding.pry
    allow(exercise_1.intervals[0]).to receive(:intervals).and_return(interval)
  end
end
