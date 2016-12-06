class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :course_id
      t.integer :review_id
      t.integer :user_id
      t.text :review
      t.integer :thumb_up
      t.integer :thumb_down

      t.timestamps
    end
  end
end
