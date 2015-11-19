class RequestsController < ApplicationController
  def show
  	eventRequests = Event.all.where(pending_approval: true)
  	rentalRequests = Rental.all.where(pending_approval: true)
  	@getSortedRequests = eventRequests + rentalRequests
  	@users = User.all
  end

  def getSortedRequests
  	
  end

end
