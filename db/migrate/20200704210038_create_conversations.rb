class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|
      t.bigint :sender_id
      t.bigint :recipient_id

      t.timestamps
    end
  end
end
