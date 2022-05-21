class AddStatusToWorkout < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :status, :string, :default => "in progress"
  end
end
