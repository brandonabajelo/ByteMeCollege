class AddLinkToDepartments < ActiveRecord::Migration[5.0]
  def change
    add_column :departments, :link, :string
  end
end
