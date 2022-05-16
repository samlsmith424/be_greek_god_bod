require "rails_helper"

RSpec.describe 'JobPoro' do
  it "exists with attributes" do
    data = {:bodyPart=>"waist",
            :equipment=>"body weight",
            :gifUrl=>"http://d205bpvrqc9yn1.cloudfront.net/0001.gif",
            :id=>"0001",
            :name=>"3/4 sit-up",
            :target=>"abs"
          }
    exercise = ExercisePoro.new(data)

    expect(exercise).to be_a(ExercisePoro)
    expect(exercise.body_part).to eq("waist")
    expect(exercise.equipment).to eq("body weight")
    expect(exercise.gif_url).to eq("http://d205bpvrqc9yn1.cloudfront.net/0001.gif")
    expect(exercise.id).to eq("0001")
    expect(exercise.name).to eq("3/4 sit-up")
    expect(exercise.target_muscle).to eq("abs")
  end
end
