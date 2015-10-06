class User < ActiveRecord::Base
	has_many :rentals
	has_many :events

	scope :sorted, lambda { order("users.last_name ASC")}
	
end
