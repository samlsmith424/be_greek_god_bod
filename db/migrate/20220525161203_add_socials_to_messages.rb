class AddSocialsToMessages < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :social, foreign_key: true
  end
end
