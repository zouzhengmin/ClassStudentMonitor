class ChangeIsMonitorToString < ActiveRecord::Migration[5.2]
  def change
    change_column :students, :is_monitor, :string, :unique => true
  end
end
