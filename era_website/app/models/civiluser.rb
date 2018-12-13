class Civiluser < ApplicationRecord

	validates :username, confirmation: { message: "does not match username"}
	validates :username_confirmation, presence: true
	validates :username, uniqueness: true
	validates :password, confirmation: { message: "does not match password"}
	validates :password_confirmation, presence: true
	validates :phone_number, confirmation: { message: "does not match phone number"}
	validates :phone_number_confirmation, presence: true
	validates :first_name, :last_name, :city, :state, :username, :password, :email, :phone_number, presence: true

	has_secure_password
end
