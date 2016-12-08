class Department < ApplicationRecord
	attr_accessor :dNname


	validates :d_name, :presence => true
	
	has_many :courses
end
