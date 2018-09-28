class ChangeIsMonitorToStudents < ActiveRecord::Migration[5.2]
  def change
    change_column :students, :is_monitor, :boolean, :unique => true
  end
end
