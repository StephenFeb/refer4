class CreateOrganisations < ActiveRecord::Migration[6.0]
  def change
    create_table :organisations do |t|
      t.string :name
      t.string :sector
      t.text :description
      t.text :culture

      t.timestamps
    end
  end
end
