require 'rails_helper'

RSpec.describe Interval, type: :model do

 describe 'relationships' do
   it { should belong_to(:workout_exercise) }
 end

 describe 'validations' do
   it { should validate_presence_of(:reps) }
   it { should validate_presence_of(:weight_lbs) }
   it { should validate_numericality_of(:reps) }
   it { should validate_numericality_of(:weight_lbs) }
 end
end
