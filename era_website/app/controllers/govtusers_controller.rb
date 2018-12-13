class GovtusersController < ApplicationController

	def index
		@govtusers = Govtuser.all	
	end
	
	def login
		@govtuser = Govtuser.find(params[:username])
	end
	
	def profile
		@govtuser = Govtuser.find(params[:id])		
	end

        def show
		@govtuser = Govtuser.find(params[:id])
	end

	def new
		@govtuser = Govtuser.new
	end

	def edit
		@govtuser = Govtuser.find(params[:id])
	end

	def create
		@govtuser = Govtuser.new(govtuser_params)
		
		if(@govtuser.usertype == "govt" )
		  if(Organization.where(orgname: @govtuser.orgname, orgcode: @govtuser.orgcode).exists? )
		  	  if @govtuser.save
		  	    log_in @govtuser
			    flash[:success] = "Saved Government User"
			    redirect_to @govtuser
			    puts "chicken"
			  else
				  flash[:danger] = "Did NOT save Government User"
			  	  render 'new'
			  end
		  else
			 flash[:danger] = "Government name and/or code not valid"
			 render 'new'
			 puts "beef"
		 end
	 	else
		 if @govtuser.save
		  	    log_in @govtuser
			    flash[:success] = "Saved Civilian User"
			    redirect_to @govtuser
		 else
			    flash[:danger] = "Did NOT save Civilian User"
			    render 'new'
	  	 end
		end
				
	end	

	def update
		@govtuser = Govtuser.find(params[:id])

		if @govtuser.update(govtuser_params)
    			redirect_to @govtuser
  		else
  			render 'edit'
  		end
	end	

	def destroy
		@govtuser = Govtuser.find(params[:id])
		@govtuser.destroy
		
		redirect_to govtusers_path
	end

	private
		def govtuser_params
			params.require(:govtuser).permit(:first_name, :last_name, :address, :city, :state, :username, :username_confirmation, :password, :password_confirmation, :email, :phone_number, :phone_number_confirmation, :usertype, :orgname, :orgcode)
		end
end