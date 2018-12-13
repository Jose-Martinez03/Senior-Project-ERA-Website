class Organization < ApplicationRecord


	  validates :orgname, presence: true,
                    length: { minimum: 2 }	
		
	  validates :orgcode, presence: true,
                    length: { minimum: 5 }
end
