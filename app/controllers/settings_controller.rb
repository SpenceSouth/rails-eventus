class SettingsController < ApplicationController
  def show
  	@users = User.all
  end
end
