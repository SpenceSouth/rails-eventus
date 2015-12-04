class RequestsController < ApplicationController
  def show
  	eventRequests = Event.all.where(pending_approval: true)
  	rentalRequests = Rental.all.where(pending_approval: true)
  	@getSortedRequests = eventRequests + rentalRequests
    @currentRequest = @getSortedRequests[params[:id].to_i]
    # @currentRequest = @getSortedRequests[params[:id].to_i]
    @selected  = @currentRequest[params[:id]]
    @users = User.all
    @replyMessage = ""
  end

  def getSortedRequests
  	
  end
  def denyRequest
    flash[:notice] = "Request denied. Sent reply message"
   
    redirect_to "/requests/show/1"
  end
  def acceptRequest
    flash[:notice] = "Request accepted. Sent reply message"
    redirect_to "/requests/show/1"
  end


end
