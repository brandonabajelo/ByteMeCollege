class CreateProfessors < ActiveRecord::Migration[5.0]
  def change
    create_table :professors do |t|
      t.string :p_name, :null => false
      t.text :p_info

      t.timestamps
    end
  end
end
