class StandupsController < AuthenticatedApplicationController
  include EventsHelper

  def index
    @standups = current_team.standups.all
  end

  def new
    @groups = current_team.groups.all
    @standup = current_team.standups.new
  end

  def create
    @standup = current_team.standups.new(standup_params)

    if @standup.save
      flash[:success] = "Standup Email Sent!"
      StandupMailer.daily(@standup)
      redirect_to root_path
    else
      flash[:errors] = @standup.errors.full_messages
      redirect_to new_standup_path
    end
  end

  private

  def standup_params
    params.require(:standup).permit(:date, :comments, :meetings, :event_of_the_day, :team_id, standup_team_members_attributes: [:yesterday, :today, :team_member_id, :standup_id])
  end
end
