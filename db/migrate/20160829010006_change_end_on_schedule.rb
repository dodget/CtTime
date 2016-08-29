class ChangeEndOnSchedule < ActiveRecord::Migration
  def change
    rename_column :schedules, :end, :ending
  end
end
