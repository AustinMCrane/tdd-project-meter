class CreateCoverages < ActiveRecord::Migration[5.0]
  def change
    create_table :coverages do |t|
      t.string :commit
      t.string :message
      t.integer :model
      t.integer :controller
      t.integer :request
      t.integer :routing
      t.integer :integration
      t.integer :other
      t.integer :project_id, index: true

      t.timestamps
    end
  end
end
