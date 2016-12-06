json.extract! review, :id, :course_id, :review_id, :user_id, :review, :thumb_up, :thumb_down, :created_at, :updated_at
json.url review_url(review, format: :json)