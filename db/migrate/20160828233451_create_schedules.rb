class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :course_name
      t.string :class_name
      t.string :specialty
      t.datetime :start
      t.datetime :end
      t.string :location
      t.float :hours
      t.boolean :in_hst
      t.string :ct_assigned
      t.string :backup_ct

      t.timestamps null: false
    end
  end
end
