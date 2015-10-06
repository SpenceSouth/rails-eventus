class Rental < ActiveRecord::Base
	belongs_to :user
	has_one :equipment
end
