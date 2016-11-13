json.extract! student, :id, :first_name, :last_name, :user_name, :password, :email, :biography, :created_at, :updated_at
json.url student_url(student, format: :json)