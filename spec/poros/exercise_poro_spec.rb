require "rails_helper"

RSpec.describe 'Exercise Poro' do
  it "exists with attributes" do
    data = Exercise.create(equipment: "body weight", gif: "http://d205bpvrqc9yn1.cloudfront.net/0001.gif", name: "3/4 sit-up")

    exercise = ExercisePoro.new(data)

    expect(exercise).to be_a(ExercisePoro)
    expect(exercise.equipment).to eq("body weight")
    expect(exercise.gif).to eq("http://d205bpvrqc9yn1.cloudfront.net/0001.gif")
    expect(exercise.id).to eq("0001")
    expect(exercise.name).to eq("3/4 sit-up")
  end
end
