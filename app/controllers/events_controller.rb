class EventsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
  	@rooms = Room.all
  	@users = User.all
  	@currentRoom = Room.find(params[:id])
  	@events = Event.all.where("room_id = ? AND pending_approval = ?", params[:id], false)
  	@pendingEvents = Event.all.where("room_id = ? AND pending_approval = ?", params[:id], true)
    @newRoom = Room.new
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
      flash[:room_created] = @newRoom.name
      
      @users = User.all
      id = @newRoom.id
      redirect_to "/events/show/" + id.to_s
    else 

      @users = User.all
      redirect_to "/dashboard/show"
    end
  end

  def createRoom
    
  end

  def newEvent


  end

  def create
    @events = Event.new
  end
  def roomParams
    params.require(:room).permit(:name,:number,:description,:category,:allowFood,:hasProjector,:capacity);
  end
end
