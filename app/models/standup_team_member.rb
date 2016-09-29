class StandupTeamMember < ApplicationRecord
  belongs_to :standup
  belongs_to :team_member
end
