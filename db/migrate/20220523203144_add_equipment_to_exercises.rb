class AddEquipmentToExercises < ActiveRecord::Migration[5.2]
  def change
    add_column :exercises, :equipment, :string
  end
end
