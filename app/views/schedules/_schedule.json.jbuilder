json.extract! schedule, :id, :course_name, :class_name, :specialty, :start, :ending, :location, :hours, :in_hst, :ct_assigned, :backup_ct, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
