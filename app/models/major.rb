class Major < ApplicationRecord
	belongs_to :department
	attr_accessor :mNname


	validates :m_name, :presence => true
	validates :department_id, :presence => true
end
