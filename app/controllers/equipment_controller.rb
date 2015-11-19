class EquipmentController < ApplicationController
  def show
  	@equipment = Equipment.all
  	@currentEquipment = Equipment.find(params[:id])
  	@users = User.all
  	@newEquipment = Equipment.new
  end
  def newEquipment
  	@newEqupiment = Equipment.new(equipmentParams)
  	if @newEqupiment.save
  		redirect_to "/events/show/" + 1.to_s
      
  	else
  		redirect_to "/dashboard/show/" + 1.to_s
      		
  	end
  end

  def equipmentParams
  	    params.require(:equipment).permit(:name,:tag_number,:description,:category,:cost)

  end


end
