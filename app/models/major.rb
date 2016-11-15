class Major < ApplicationRecord
	belongs_to :department
	attr_accessor :mNname


	validates :m_name, presence: true, length: { minimum: 8}
	validates :department_id, presence: true
end
