class EventsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
  	@rooms = Room.all
  	@users = User.all
  	@currentRoom = Room.find(params[:id])
  	@events = Event.all.where("room_id = ? AND pending_approval = ?", params[:id], false)
  	@pendingEvents = Event.all.where("room_id = ? AND pending_approval = ?", params[:id], true)
    @newRoom = Room.new
    @newEvent = Event.new
  end

  def add
    render :layout => false
   
  end

  def index
    @events = Event.all
  end

  def newRoom
    @newRoom = Room.new(roomParams)
    if @newRoom.save
      index = @newRoom.id
      redirect_to "/events/show/" + index.to_s
      
    else 

      redirect_to "/dashboard/show"
    end
  end
  
  def newEvent
    @newEvent = Event.new(eventParams)
    if @newEvent.save
      redirect_to "/events/show/" + 1.to_s
    else
      @users = User.all
      redirect_to "/dashboard/show"
    end
  end

  def createRoom
    
  end


  def create
    @events = Event.new
  end
  def roomParams
    params.require(:room).permit(:name,:number,:description,:category,:allowFood,:hasProjector,:capacity)
  end
  def eventParams
    params.require(:event).permit(:name,:roomNumber,:description,:date,:start_time,:end_time,:food,:projector,:capacity,:user_id,:room_id,:pending_approval)
  end
end
