class StandupTeamMember < ApplicationRecord
  belongs_to :standup
  belongs_to :team_member

  accepts_nested_attributes_for :standup
end
