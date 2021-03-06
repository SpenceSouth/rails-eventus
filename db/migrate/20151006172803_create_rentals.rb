class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|

    	t.datetime "start_time"
    	t.datetime "end_time"
    	t.string "name", :null => false
    	t.integer "user_id", :nulll => false
    	t.text "description", :limit => 200
    	t.integer "equipment_id", :null => false
      t.boolean "pending_approval", :default => true
      t.string "until"
      t.date "date"
      t.timestamps null: false
    end
  end
end
