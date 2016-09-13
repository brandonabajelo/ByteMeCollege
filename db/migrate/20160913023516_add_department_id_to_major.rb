class AddDepartmentIdToMajor < ActiveRecord::Migration[5.0]
  def change
    add_column :majors, :department_id, :integer
  end
end
