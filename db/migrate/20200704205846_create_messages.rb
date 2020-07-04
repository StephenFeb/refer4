class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text :body
      t.bigint :conversation_id
      t.bigint :user_id
      t.boolean :read

      t.timestamps
    end
  end
end
