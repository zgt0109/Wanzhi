class AddEmailToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :email, :string, limit: 50
  end
end
