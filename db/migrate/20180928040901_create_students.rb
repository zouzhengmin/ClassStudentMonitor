class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name, :null => false, :unique =>true
      t.string :number, :null => false, :unique =>true
      t.integer :myclass_id, :null => false
      t.timestamps
    end
  end
end
