class Team < ActiveRecord::Base
  attr_accessible :name, :members, :memberships, :member_ids, :supervisor_id

  has_many :memberships, :class_name => 'TeamMembership', :inverse_of => :team
  has_many :members, :through => :memberships, :source => :employee
  belongs_to :supervisors, :class_name => 'Employee', 
  	:inverse_of => :supervised_teams

  validates :name, :members, :presence => true
end
