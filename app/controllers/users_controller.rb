class UsersController < ApplicationController
  def show
  	@users = User.all
  	@currentUser = User.find(params[:id])
  end
end
