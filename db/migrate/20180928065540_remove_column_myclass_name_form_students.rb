class RemoveColumnMyclassNameFormStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :myclass_name, :string, :unique => true

  end
end
