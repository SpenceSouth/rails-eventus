class RequestsController < ApplicationController
  def show
  	@eventRequests = Event.all.where("pending_approval = ?", true)
  	@rentalRequests = Rental.all.where("pending_approval = ?", true)
  end
end
