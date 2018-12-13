module SessionsHelper

	
	# Logs in the given user
	def log_in(govtuser)
		session[:govtuser_id] = govtuser.id
	end
	
	#returns the current logged-in user
	def current_user
		if session[:govtuser_id]
			@current_user ||= Govtuser.find_by(id: session[:govtuser_id])
		end
  	end

	#using this to check if the user is logged in, returns false if not
	def logged_in?
		!current_user.nil?
	end

	def log_out
		session.delete(:govtuser_id)
		@current_user = nil
	end



	def log_in1(civiluser)
		session[:civiluser_id] = civiluser.id
	end
	
	#returns the current logged-in user
	def current_user1
		if session[:civil_id]
			@current_user1 ||= Civiluser.find_by(id: session[:civiluser_id])
		end
  	end

	#using this to check if the user is logged in, returns false if not
	def logged_in1?
		!current_user1.nil?
	end

	def log_out1
		session.delete(:civiluser_id)
		@current_user1 = nil
	end
	
end

