class AddMonitorToStudent < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :is_monitor, :boolean
  end
end
