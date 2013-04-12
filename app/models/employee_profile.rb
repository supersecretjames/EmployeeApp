class EmployeeProfile < ActiveRecord::Base
  attr_accessible :employee_id, :height, :favorite_food, :favorite_day, 
  	:birthday, :salary
  
  belongs_to :employee
end
