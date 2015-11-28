class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string "name", :null => false
      t.string "roomNumber"
    	t.text "description", :limit => 200
      t.date "date"
      t.datetime "start_time"
      t.datetime "end_time"
      t.boolean "food"
      t.boolean "projector"
      t.boolean "capacity"
      t.string "until"
      t.integer "user_id" 
      t.integer "room_id"
      t.boolean "pending_approval", :default => true
      t.timestamps null: false
    end
  end
end
