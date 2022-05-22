class RemoveMuscleGroupFromExercises < ActiveRecord::Migration[5.2]
  def change
    remove_column :exercises, :muscle_group, :string
  end
end
