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
	Room.create(name: "Room 1",capacity: 50, description: "Room number one offers students a very comfortable learning environment.")
	Room.create(name: "Room 2",capacity: 100, description: "A large auditorium on the second floor.")
	Room.create(name: "Room 3",capacity: 25, description: "A very small classroom that only fits 25 students. Once a linon closet converted to a fully function, sauna like classroom")
	Room.create(name: "Room 1506",capacity: 100, description: "A large event space")
	Room.create(name: "Room 1503",capacity: 100, description: "Medium Sized class room")
	Room.create(name: "Room 1011",capacity: 25, description: "A very small study space that is popularly referenced in the Harry Potter series as the place Harry used to sleep in under the staircase")
	Room.create(name: "Room 1012",capacity: 25, description: "A very small study space that is popularly referenced in the Harry Potter series as the place Harry used to sleep in under the staircase")

	#Create the Equipment
	Equipment.create(name: "Computer: Dell Laptop 1")
	Equipment.create(name: "Computer: Dell Laptop 2")
	Equipment.create(name: "Computer: Dell Laptop 3")
	Equipment.create(name: "Computer: Dell Laptop 4")
	Equipment.create(name: "Cart 1")
	Equipment.create(name: "Cart 2")
	Equipment.create(name: "Cart 3")
	Equipment.create(name: "Cart 4")
	Equipment.create(name: "Bose Speakers 1")
	Equipment.create(name: "Bose Speakers 2")
	Equipment.create(name: "Microphone 1")
	Equipment.create(name: "Microphone 2")
	Equipment.create(name: "Microphone 3")
	Equipment.create(name: "Computer: Apple Macbook 1")

	#Create events not pending approval
	Event.create(name: "Request for room 1", user_id: 1, room_id: 1,pending_approval: false)
	Event.create(name: "Request for room 2", user_id: 3, room_id: 2,pending_approval: false)

	#Create events that are pending approval
	Event.create(name: "Request for room 3", user_id: 2, room_id: 3)
	Event.create(name: "Request for room 3", user_id: 3, room_id: 3)
  Event.create(name: "1506: Pre-law meeting", user_id: 3, room_id: 4, start_time: '2015-11-25T12:00', end_time: '2015-11-25T13:00', pending_approval: true )
  Event.create(name: "1011: Study Reservation Brian", user_id: 3, room_id: 5, start_time: '2015-11-19T15:00', end_time: '2015-11-19T16:00', pending_approval: true  )
  Event.create(name: "1011: Study Reservation Spence", user_id: 3, room_id: 5, start_time: '2015-11-19T16:30', end_time: '2015-11-19T18:00', pending_approval: true  )
  Event.create(name: "1012: Study Reservation James", user_id: 3, room_id: 6, start_time: '2015-11-18T12:00', end_time: '2015-11-18T113:00', pending_approval: false  )
  Event.create(name: "1506: Dean's Event", user_id: 3, room_id: 4, start_time: '2015-11-20T12:00', end_time: '2015-11-20T17:00', pending_approval: false  )
  Event.create(name: "1503: Study Room Brian", user_id: 3, room_id: 6, start_time: '2015-11-20T12:00', end_time: '2015-11-20T14:00', pending_approval: true  )
  Event.create(name: "1011: Breakfast Gala", user_id: 3, room_id: 5, start_time: '2015-11-20T9:00', end_time: '2015-11-20T11:00', pending_approval: false  )
  Event.create(name: "1011: Breakfast Gala", user_id: 3, room_id: 5, start_time: '2015-11-19T9:00', end_time: '2015-11-19T11:00', pending_approval: false  )

	#Create rentals not pending approval
	Rental.create(name: "Request to rent Computer 1", user_id: 1, equipment_id: 1, pending_approval: false)
	Rental.create(name: "Request to rent Cart 1", user_id: 2, equipment_id: 2, pending_approval: false)

	#Create rentals that are pending approval
	Rental.create(name: "Request to rent Computer 2", user_id: 3, equipment_id: 1)
	