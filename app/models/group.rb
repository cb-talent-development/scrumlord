class Group < ApplicationRecord
  has_many :team_members
  belongs_to :team
end
