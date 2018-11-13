class UsersController < ApplicationController
	def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
 	if @user.save
    session.clear
    session[:user_id] = @user.id
    redirect_to show_path(value: @user.id)
  else
    render 'new'
  end
end


def update
  @user = User.find(params[:id])
 
  if @user.update(user_params)
    redirect_to @user
  else
    render 'edit'
  end
end


def destroy
  @user = User.find(params[:id])
  @user.destroy
 
  redirect_to users_path
end

def index
    @users = User.all
  end

def show
    if session[:user_id]
    @user = User.find(params[:value])
   
    @user.services

    @services= Service.all
    else
      redirect_to login_path
  end
end


def edit
  @user = User.find(params[:id])

end
  
private
  def user_params
    params.require(:user).permit(:name, :email,:password,:password_confirmation)
  end


end