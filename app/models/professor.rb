class Professor < ApplicationRecord
	attr_accessor :pNname


	validates :p_name, :presence =+> true
end
