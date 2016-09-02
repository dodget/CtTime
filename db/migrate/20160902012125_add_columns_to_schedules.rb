class AddColumnsToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :start_date, :date
    add_column :schedules, :start_time, :time
    add_column :schedules, :end_date, :date
    add_column :schedules, :end_time, :time
  end
end
