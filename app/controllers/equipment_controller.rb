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
  		flash[:notice] = "Equipment created Successfully"
      
      redirect_to "/equipment/show/" + index.to_s
      
  	else
      flash[:alert] = "Error: failed to add equipment. Please Try again"
      
  		redirect_to "/dashboard/show"
      		
  	end
  end

  def equipmentParams
  	    params.require(:equipment).permit(:name,:tag_number,:description,:category,:cost)

  end


end
