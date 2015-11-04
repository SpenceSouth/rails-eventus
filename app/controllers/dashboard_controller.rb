class DashboardController < ApplicationController
	
	layout 'application'
  def show
  	@events = Event.all
  end
end
