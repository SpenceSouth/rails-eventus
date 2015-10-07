class UserController < ApplicationController
	layout false
  def index
  	@users = User.all
  end

  def new
  	@user = User.new()
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User created successfully"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:notice] = "User updated successfully"
      redirect_to(:action => 'show', :id => @user.id)
    else
      render('edit')
    end
  end

  def delete
  	@user = User.find(params[:id])
  end

  def destroy

    user = User.find(params[:id])
    user.destroy
    flash[:notice] = "User destroyed successfully"
    redirect_to(:action => 'index')
  end

  def show
  	@user = User.find(params[:id])
  end

  private
  def user_params
  	params.require(:user).permit(:first_name,:last_name,:email,:password,:teacher,:image_url)
  end
end
