class Student < ApplicationRecord
	before_save { self.user_name = user_name.downcase }
	before_save { self.email = email.downcase }
	
	validates :user_name, presence: true, length: { minimum: 8, maximum: 18 }, 
				uniqueness: { case_sensitive: false }
	validates :password, presence: true, length: { minimum: 8, maximum: 18 }
	validates :first_name, presence: true, length: { maximum: 50 }
	validates :last_name, presence: true, length: { maximum: 50 }
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@sjsu.edu\z/i
	validates :email, presence: true, length: { maximum: 30 },
				format: { with: VALID_EMAIL_REGEX }, 
				uniqueness: { case_sensitive: false }

end
