class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.datetime "start_time"
    	t.datetime "end_time"
    	t.string "name", :null => false
    	t.integer "user_id", :nulll => false
    	t.text "description", :limit => 200
    	t.integer "room_id", :null => false
      t.boolean "pending_approval", :default => true
      t.timestamps null: false
    end
  end
end
