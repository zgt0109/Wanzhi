class AddEnglishNameToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :englishname, :string, limit: 20
  end
end
