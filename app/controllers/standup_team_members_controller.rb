class StandupTeamMembersController < ApplicationController
  before_action :set_standup_team_member, only: [:show, :edit, :update, :destroy]

  # GET /standup_team_members
  # GET /standup_team_members.json
  def index
    @standup_team_members = StandupTeamMember.all
  end

  # GET /standup_team_members/1
  # GET /standup_team_members/1.json
  def show
  end

  # GET /standup_team_members/new
  def new
    @standup_team_member = StandupTeamMember.new
  end

  # GET /standup_team_members/1/edit
  def edit
  end

  # POST /standup_team_members
  # POST /standup_team_members.json
  def create
    @standup_team_member = StandupTeamMember.new(standup_team_member_params)

    respond_to do |format|
      if @standup_team_member.save
        format.html { redirect_to @standup_team_member, notice: 'Standup team member was successfully created.' }
        format.json { render :show, status: :created, location: @standup_team_member }
      else
        format.html { render :new }
        format.json { render json: @standup_team_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /standup_team_members/1
  # PATCH/PUT /standup_team_members/1.json
  def update
    respond_to do |format|
      if @standup_team_member.update(standup_team_member_params)
        format.html { redirect_to @standup_team_member, notice: 'Standup team member was successfully updated.' }
        format.json { render :show, status: :ok, location: @standup_team_member }
      else
        format.html { render :edit }
        format.json { render json: @standup_team_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /standup_team_members/1
  # DELETE /standup_team_members/1.json
  def destroy
    @standup_team_member.destroy
    respond_to do |format|
      format.html { redirect_to standup_team_members_url, notice: 'Standup team member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_standup_team_member
      @standup_team_member = StandupTeamMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def standup_team_member_params
      params.require(:standup_team_member).permit(:standup_id, :today, :yesterday, :team_member_id)
    end
end
