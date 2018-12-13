class DisastereventsController < ApplicationController
        def index
		@disasterevents = Disasterevent.all	
	end

	def show
		@disasterevent = Disasterevent.find(params[:id])
	end

	def new
		@disasterevent = Disasterevent.new
	end

	def edit
		@disasterevent = Disasterevent.find(params[:id])
	end

	def create
	        @disasterevent = Disasterevent.new(disasterevent_params)
		
		if @disasterevent.save
			redirect_to @disasterevent
		else 
			render 'new'
		end
	end
	
	def update
		@disasterevent = Disasterevent.find(params[:id])
 		
		if @disasterevent.update(disasterevent_params)
			redirect_to @disasterevent
		else
			render 'edit'
  		end
	end

	def destroy
		@disasterevent = Disasterevent.find(params[:id])
		@disasterevent.destroy
		
		redirect_to disasterevents_path
	end
	
	private 
		def disasterevent_params
			params.require(:disasterevent).permit(:name, :begindate, :disaster_type, :state, :description, :madeby)
		

end
end
