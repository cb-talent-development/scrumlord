json.extract! standup_team_member, :id, :standup_id, :today, :yesterday, :team_member_id, :created_at, :updated_at
json.url standup_team_member_url(standup_team_member, format: :json)