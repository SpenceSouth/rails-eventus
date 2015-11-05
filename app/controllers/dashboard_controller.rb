class DashboardController < ApplicationController
	
	layout 'application'
  def show
  	@events = Event.all
  	@users = User.all
  end
end
