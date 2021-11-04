class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.integer     :year_id,    null: false
      t.integer     :month_id,   null: false
      t.integer     :day_id,     null: false
      t.integer     :hour_id,    null: false
      t.references  :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
