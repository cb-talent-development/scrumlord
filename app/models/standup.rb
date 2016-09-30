class Standup < ApplicationRecord
  has_many :standup_team_members
  has_many :team_members, through: :standup_team_members
  belongs_to :team

  accepts_nested_attributes_for :standup_team_members
end
