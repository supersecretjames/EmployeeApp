class TeamMembership < ActiveRecord::Base
 	attr_accessible :team_id, :employee_ids

  belongs_to :employee
  belongs_to :team
end
