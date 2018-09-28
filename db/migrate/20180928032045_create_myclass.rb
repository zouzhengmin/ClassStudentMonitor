class CreateMyclass < ActiveRecord::Migration[5.2]
  def change
    create_table :myclasses do |t|
      t.string :name, :null=>false, :unique=>true
      t.timestamps
    end
  end
end
