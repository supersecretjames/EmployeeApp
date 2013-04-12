class TeamsController < ApplicationController

	def index
		@teams = Team.all
	end

	def new
		@team = Team.new
		@team.memberships.build
	end

	def create
		@team = Team.new(params[:team])

		if @team.save
			redirect_to team_url(@team)
		else
			render :new
		end
	end

	def show
		@team = Team.find(params[:id])
	end

	def edit
		@team = Team.find(params[:id])
	end

	def update
		@team = Team.find(params[:id])

		if @team.update_attributes(params[:team])
			redirect_to team_url(@team)
		else
			render :edit
		end
	end
end
