class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "first_name", :limit => 50
      t.string "last_name", :limit => 50
      t.string "image_url"
      t.boolean "teacher", :default => false
      t.string "password", :limit => 40
      t.string "email", :limit => 40
      t.timestamps null: false
    end
  end
end
