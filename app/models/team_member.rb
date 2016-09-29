class TeamMember < ApplicationRecord
  has_many :standup_team_members
  has_many :standups, through: :standup_team_members
  belongs_to :group

  validates :email, :first_name, :last_name, presence: true

  def gravatar_url
    Gravatar.new(email).url(size: 300)
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
