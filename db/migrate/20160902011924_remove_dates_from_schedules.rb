class RemoveDatesFromSchedules < ActiveRecord::Migration
  def change
    remove_column :schedules, :start
    remove_column :schedules, :ending
  end
end
