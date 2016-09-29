class CreateStandupTeamMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :standup_team_members do |t|
      t.references :standup, foreign_key: true
      t.text :today
      t.text :yesterday
      t.references :team_member, foreign_key: true

      t.timestamps
    end
  end
end
