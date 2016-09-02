json.extract! schedule, :id, :course_name, :class_name, :specialty, :start_date, :start_time, :end_date, :end_time, :location, :hours, :in_hst, :ct_assigned, :backup_ct, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
