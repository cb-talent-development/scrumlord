class TeamMember < ApplicationRecord
  has_many :standup_team_members
  has_many :standups, through: :standup_team_members
  belongs_to :group
end
