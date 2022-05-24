class CreateMessagesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :messages_tables do |t|
      t.text :content
      t.references :user, foreign_key: true
    end
  end
end
