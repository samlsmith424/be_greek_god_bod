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
end
