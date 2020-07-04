class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :organisation
      t.string :location
      t.integer :salary
      t.text :description

      t.timestamps
    end
  end
end
