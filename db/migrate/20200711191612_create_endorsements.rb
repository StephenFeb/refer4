class CreateEndorsements < ActiveRecord::Migration[6.0]
  def change
    create_table :endorsements do |t|
      t.text :endorsement
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
