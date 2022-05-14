class User < ApplicationRecord
  has_many :workouts
  validates_presence_of :name
  validates_presence_of :password

end
