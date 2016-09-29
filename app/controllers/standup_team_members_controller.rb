class StandupTeamMembersController < ApplicationController
  before_action :set_standup_team_member, only: [:show, :update, :destroy]

  # GET /standup_team_members
  def index
    @standup_team_members = StandupTeamMember.all

    render json: @standup_team_members
  end

  # GET /standup_team_members/1
  def show
    render json: @standup_team_member
  end

  # POST /standup_team_members
  def create
    @standup_team_member = StandupTeamMember.new(standup_team_member_params)

    if @standup_team_member.save
      render json: @standup_team_member, status: :created, location: @standup_team_member
    else
      render json: @standup_team_member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /standup_team_members/1
  def update
    if @standup_team_member.update(standup_team_member_params)
      render json: @standup_team_member
    else
      render json: @standup_team_member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /standup_team_members/1
  def destroy
    @standup_team_member.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_standup_team_member
      @standup_team_member = StandupTeamMember.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def standup_team_member_params
      params.require(:standup_team_member).permit(:standup_id, :today, :yesterday, :team_member_id)
    end
end
