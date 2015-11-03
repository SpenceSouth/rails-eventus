class EventsController < ApplicationController
  def show
  	@rooms = Room.all
  	
  		@currentRoom = Room.find(params[:id])
  end 
end
