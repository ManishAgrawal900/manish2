class ServicesController < ApplicationController

	def addservice

  	if  session[:user_id] 
	@service = Service.find(params[:any])
		  @user = User.find(params[:value])
		@user.services << @service

 	
          redirect_to show_path(value: @user.id)
 			else
 				redirect_to login_path
  	end

	end

def allow
	  @join = Join.find(params[:a])
	  @join.update!(status:1)	
		redirect_to admin_root_path 
		  
end
	
def reject
	  @join = Join.find(params[:a])
	  	@join.update!(status:2)
		redirect_to admin_root_path 
		  
end
	
def remove_coupan
	@join = Join.find(params[:ab])
	@join.statuss = false
	@join.save
	
	redirect_to show_path(value: @join.user_id)
end

end
