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
	  	index = @newEqupiment.id
  		redirect_to "/equipment/show/" + index.to_s
      
  	else
  		redirect_to "/dashboard/show"
      		
  	end
  end

  def equipmentParams
  	    params.require(:equipment).permit(:name,:tag_number,:description,:category,:cost)

  end


end
