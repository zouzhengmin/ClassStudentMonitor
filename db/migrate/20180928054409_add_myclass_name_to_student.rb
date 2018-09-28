class AddMyclassNameToStudent < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :myclass_name, :string, :unique => true
  end
end
