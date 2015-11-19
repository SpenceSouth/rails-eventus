class RequestsController < ApplicationController
  def show
  	eventRequests = Event.all.where(pending_approval: true)
  	rentalRequests = Rental.all.where(pending_approval: true)
  	@getSortedRequests = eventRequests + rentalRequests
    @currentRequest = @getSortedRequests[params[:id].to_i]
    # @currentRequest = @getSortedRequests[params[:id].to_i]
    @users = User.all
  end

  def getSortedRequests
  	
  end

end
