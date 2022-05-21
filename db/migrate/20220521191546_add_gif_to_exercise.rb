class AddGifToExercise < ActiveRecord::Migration[5.2]
  def change
    add_column :exercises, :gif, :string
  end
end
