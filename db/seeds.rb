# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#CREATE DUMMY DATA

	#Create the users
	User.create(first_name: 'Brian', last_name: 'Sharp', email: 'test@test.com', password: '1234')
	User.create(first_name: 'Spencer', last_name: 'Southard', email: 'test@test.com', password: '1234')
	User.create(first_name: 'Ramsey', last_name: 'Crowe', email: 'test@test.com', password: '1234')

	#Create the Rooms
	Room.create(name: "Room 1")
	Room.create(name: "Room 2")
	Room.create(name: "Room 3")

	#Create the Equipment
	Equipment.create(name: "Computer 1")
	Equipment.create(name: "Cart 1")
	Equipment.create(name: "Computer 2")

	#Create events not pending approval
	Event.create(name: "Request for room 1", user_id: 1, room_id: 1,pending_approval: false)
	Event.create(name: "Request for room 2", user_id: 3, room_id: 2,pending_approval: false)

	#Create events that are pending approval
	Event.create(name: "Request for room 3", user_id: 2, room_id: 3)
	Event.create(name: "Request for room 3", user_id: 3, room_id: 3)

	#Create rentals not pending approval
	Rental.create(name: "Request to rent Computer 1", user_id: 1, equipment_id: 1, pending_approval: false)
	Rental.create(name: "Request to rent Cart 1", user_id: 2, equipment_id: 2, pending_approval: false)

	#Create rentals that are pending approval
	Rental.create(name: "Request to rent Computer 2", user_id: 3, equipment_id: 1)
	