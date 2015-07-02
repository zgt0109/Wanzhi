class AddTelephoneToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :telephone, :string, limit: 50
  end
end
