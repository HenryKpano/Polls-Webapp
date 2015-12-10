class Textpoll < ActiveRecord::Base
	belongs_to 				:user
	validates_presence_of 	:title, :first_msg, :second_msg
	has_many				:votes
end
