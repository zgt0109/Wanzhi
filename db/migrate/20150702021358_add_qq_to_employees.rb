class AddQqToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :qq, :string, limit: 20
  end
end
