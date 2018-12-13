class CivilusersController < ApplicationController

	def index
		@civilusers = Civiluser.all
	end
	
	def login
		@civiluser = Civiluser.find(params[:username])
	end
	
	def show
		@civiluser = Civiluser.find(params[:id])
	end
	
	def new
		@civiluser = Civiluser.new
	end
	
	def edit
		@civiluser = Civiluser.find(params[:id])
	end
	
	def create
		@civiluser = Civiluser.new(civiluser_params)
		
		if @civiluser.save
			log_in @civiluser
			flash[:success] = "Sign Up Success"
			redirect_to @civiluser
		else 
			render 'new'
		end
	end
	
	def update
		@civiluser = Civiluser.find(params[:id])
		
		if @civiluser.update(civiluser_params)
			redirect_to @civiluser
		else
			render 'edit'
		end
	end
	
	def destroy 
		@civiluser = Civiluser.find(params[:id])
		@civiluser.destroy
		
		redirect_to civilusers_path
	end
			
	private
		def civiluser_params
			params.require(:civiluser).permit(:first_name, :last_name, :address, :city, :state, :username, :username_confirmation, :password, :password_confirmation, :email, :phone_number, :phone_number_confirmation)
		end
end
