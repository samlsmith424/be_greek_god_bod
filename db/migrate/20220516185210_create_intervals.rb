class CreateIntervals < ActiveRecord::Migration[5.2]
  def change
    create_table :intervals do |t|
      t.integer :reps
      t.float :weight_lbs
      t.references :workout_exercise, foreign_key: true
    end
  end
end
