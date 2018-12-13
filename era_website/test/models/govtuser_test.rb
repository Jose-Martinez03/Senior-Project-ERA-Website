require 'test_helper'



class GovtuserTest < ActiveSupport::TestCase

 def setup 
	@govtuser = Govtuser.new(first_name: "Jose", last_name: "Martinez",  password:"123456", address: "Charlotte", city:"Weslaco", state:"Texas", username:"jmart" password_confirmation:"12356", email:"jmart1119@gmail.com", phone_number: "9567568502", phone_number_confirmation:"9567568502" )  

  # test "the truth" do
  
  #   assert true
  
  # end

end
