class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
    	t.string "name", :limit => 30
    	t.text "description", :limit => 200
    	t.integer "event_id"
      t.timestamps null: false
    end
  end
end
