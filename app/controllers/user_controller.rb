class UserController < ApplicationController
  
# layout "site"
  
  def index

  end
  
  def new 
	
   end

   def about
	
   end

   def help
	
   end

  def register
	@title = "Register"
	if request.post? and params[:user]
	  @user = User.new(params[:user])
	  logger.info params[:user].inspect
	  if @user.save
	    flash[:notice] = "User #{@user.screen_name} created!"
        redirect_to :action => "index"
	  end
    end
  end
end

