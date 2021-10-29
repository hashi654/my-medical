class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.integer     :year,    null: false
      t.integer     :month,   null: false
      t.integer     :day,     null: false
      t.integer     :hour,    null: false
      t.timestamps
    end
  end
end
