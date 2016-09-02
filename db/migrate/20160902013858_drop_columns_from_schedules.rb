class DropColumnsFromSchedules < ActiveRecord::Migration
  def change
    remove_column :schedules, :course_name
    remove_column :schedules, :class_name
    remove_column :schedules, :specialty
    remove_column :schedules, :location
    remove_column :schedules, :hours
    remove_column :schedules, :in_hst
    remove_column :schedules, :ct_assigned
    remove_column :schedules, :backup_ct
    remove_column :schedules, :start_date
    remove_column :schedules, :start_time
    remove_column :schedules, :end_date
    remove_column :schedules, :end_time
  end
end
