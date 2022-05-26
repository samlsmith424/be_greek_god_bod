require 'rails_helper'

RSpec.describe Social, type: :model do
  describe 'validations' do
     it { should have_many :messages }
   end
end
