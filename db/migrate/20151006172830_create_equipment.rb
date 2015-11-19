class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
    	t.string "name", :limit => 30
    	t.text "description", :limit=> 200
      t.string "tag_number"
    	t.string "category"
      t.string "cost"
      t.timestamps null: false
    end
  end
end
