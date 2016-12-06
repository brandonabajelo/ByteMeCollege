json.extract! course, :id, :department_id, :course_name, :overall_rate, :description, :units, :created_at, :updated_at
json.url course_url(course, format: :json)