class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name, limit: 20
      t.integer :department_id

      t.timestamps null: false
    end
  end
end
