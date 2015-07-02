class AddSexToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :sex, :boolean
  end
end
