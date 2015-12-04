class EquipmentController < ApplicationController
  def show
  	@equipment = Equipment.all
  	@currentEquipment = Equipment.find(params[:id])
    @rentals = Rental.all.where("equipment_id = ? AND pending_approval = ?", params[:id], false)
  	@users = User.all
  	@newEquipment = Equipment.new
    @newRental = Rental.new
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
  def newRental
      @newRental = Rental.new(rentalParams)
      @newRental.pending_approval = true
      @newRental.user_id = 0
      if @newRental.save
        flash[:notice] = "Rental created Successfully"
        redirect_to "/equipment/show/" + 1.to_s
      else
        flash[:alert] = "Rental failed to create. Please try again"
        redirect_to "/dashboard/show"
      end
  end



  def equipmentParams
  	    params.require(:equipment).permit(:name,:tag_number,:description,:category,:cost)
  end
  def rentalParams
        params.require(:rental).permit(:name,:start_time,:end_time,:user_id,:description,:equipment_id,:until)

end
end
