json.extract! standup, :id, :date, :comments, :meetings, :team_id, :created_at, :updated_at
json.url standup_url(standup, format: :json)