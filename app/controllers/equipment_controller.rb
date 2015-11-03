class EquipmentController < ApplicationController
  def show
  	@equipment = Equipment.all
  	@currentEquipment = Equipment.find(params[:id])
  end
end
