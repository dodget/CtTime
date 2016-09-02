class RestoreColumnsToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :course_name, :string
    add_column :schedules, :class_name, :string
    add_column :schedules, :specialty, :string
    add_column :schedules, :start_date, :date
    add_column :schedules, :start_time, :time
    add_column :schedules, :end_date, :date
    add_column :schedules, :end_time, :time
    add_column :schedules, :location, :string
    add_column :schedules, :hours, :float
    add_column :schedules, :in_hst, :boolean
    add_column :schedules, :ct_assigned, :string
    add_column :schedules, :backup_ct, :string
  end
end
