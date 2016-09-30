class CreateStandups < ActiveRecord::Migration[5.0]
  def change
    create_table :standups do |t|
      t.date :date
      t.text :comments
      t.text :meetings
      t.boolean :event_of_the_day, default: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
