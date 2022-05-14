class CreateSets < ActiveRecord::Migration[5.2]
  def change
    create_table :sets do |t|
      t.integer :reps
      t.float :weight_lbs
      t.references :workout_exercise, foreign_key: true

      t.timestamps
    end
  end
end
