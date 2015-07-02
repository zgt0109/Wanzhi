class AddPhoneToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :phone, :string, limit: 50
  end
end
