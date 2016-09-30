class StandupsController < AuthenticatedApplicationController
  include EventsHelper

  def index
    @standups = Standup.all
  end

  def new
    @groups = Group.all
    @standup = Standup.new
  end

  def create
    @standup = Standup.new(standup_params)

    if @standup.save
      flash[:success] = "Standup Email Sent!"
      daily(@standup)
      redirect_to dashboard
    else
      flash[:errors] = @standup.errors.full_messages
      redirect_to new_standup_path
    end
  end

  private

  def standup_params
    params.require(:standup).permit(:date, :comments, :meetings, :event_of_the_day, :team_id, standup_team_member_attributes: [])
  end
end
