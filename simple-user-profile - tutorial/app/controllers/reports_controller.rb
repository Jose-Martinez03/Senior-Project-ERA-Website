class ReportsController < ApplicationController
	#before any report action happens, it will authenticate the 

  before_action :authenticate_user!
	
  def index
    @user = current_user.email
  end
	
	#other Restful methods show, new, edit, create, update, destroy
end
