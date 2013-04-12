class TeamMembershipsController < ApplicationController
	def new
		@team_membership = TeamMembership.new
	end

	def create
		@team_membership = TeamMembership.new(params[:team_membership])

		if @team_membership.save
			redirect_to team_url(@team_membership.team_id)
		else
			render :new
		end
	end

end
