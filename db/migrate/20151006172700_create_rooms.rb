class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
    	t.string "name", :limit => 30
    	t.text "description", :limit => 200
    	t.boolean "allowFood"
    	t.boolean "hasProjector"
    	t.integer "capacity"
    	
      t.timestamps null: false
    end
  end
end
