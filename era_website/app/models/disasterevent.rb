class Disasterevent < ApplicationRecord
	
	has_many :resourceitems, dependent: :destroy
	validates :name, presence: true,
			length: {minimum: 5}
	validates :begindate, presence: true,
			length: {minimum: 5}
	validates :disaster_type, presence: true,
			length: {minimum: 5} 
	validates :state, presence: true,
			length: {minimum: 5}
end
