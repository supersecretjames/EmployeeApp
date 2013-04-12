class AddColumnsToEmployeeProfile < ActiveRecord::Migration
  def change
  	add_column :employee_profiles, :height, :integer
  	add_column :employee_profiles, :favorite_food, :string
  	add_column :employee_profiles, :favorite_day, :string
  	add_column :employee_profiles, :birthday, :date
  	add_column :employee_profiles, :salary, :integer
  end
end
