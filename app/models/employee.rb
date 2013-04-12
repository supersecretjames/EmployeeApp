class Employee < ActiveRecord::Base
  attr_accessible :name, :supervisor_id, :subordinates, :supervisor,
  	:teams, :team_memberships, :team_ids, :employee_profiles_attributes

	has_many :subordinates, :class_name => 'Employee', 
		:foreign_key => :supervisor_id	
  
  belongs_to :supervisor, :class_name => 'Employee'
   
  has_many :team_ids, :through => :team_memberships
  has_many :team_memberships
  has_many :teams, :through => :team_memberships
  has_many :supervised_teams, :class_name => 'Team', :foreign_key => :supervisor_id
  has_one :employee_profile
  accepts_nested_attributes_for :employee_profile
end
