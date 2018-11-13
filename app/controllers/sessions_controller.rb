class SessionsController < ApplicationController
	 def new
  end

  def create
    user = User.authenticate(params[:login], params[:password])
   if user
    session.clear
    session[:user_id] = user.id
      a= User.find_by_email(params[:login])
      	redirect_to show_path(value: a.id)
     else
       redirect_to login_path
   end
end

def destroy
  session.clear
  render :action => 'new'
  end



end