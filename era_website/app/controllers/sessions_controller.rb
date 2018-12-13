class SessionsController < ApplicationController

  def new

  end
  
  def create
	
	civiluser = Civiluser.find_by(username: params[:session][:username])
	govtuser = Govtuser.find_by(username: params[:session][:username])
	if govtuser && govtuser.authenticate(params[:session][:password])
		flash.now[:success] = "Successful government user log in"
		log_in govtuser
		redirect_to govtuser
	
	elsif civiluser && civiluser.authenticate(params[:session][:password])
		flash.now[:success] = "Successful log in"
		log_in civiluser
		redirect_to civiluser
	
	else
		flash.now[:danger] = "Invalid email/password combination"
		render 'new'
	
	end
  end
	
  def destroy
	log_out
	redirect_to root_url
  end
  

end
