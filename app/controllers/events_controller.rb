class EventsController < ApplicationController
  def show
  	@rooms = Room.all
  	@users = User.all
  	@currentRoom = Room.find(params[:id])
  	@events = Event.all.where("room_id = ? AND pending_approval = ?", params[:id], false)
  	@pendingEvents = Event.all.where("room_id = ? AND pending_approval = ?", params[:id], true)
  end

  def add
    render :layout => false
  end
end
