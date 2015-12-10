class Picpoll < ActiveRecord::Base
	has_attached_file 							:image, styles: {medium: "300*300", thumb: "150*150#"}
	validates_attachment_content_type 			:image, content_type: /\Aimage\/.*\Z/
	has_attached_file 							:image_one, styles: {medium: "300*300", thumb: "150*150#"}
	validates_attachment_content_type 			:image_one, content_type: /\Aimage\/.*\Z/
	belongs_to 									:user
	validates_presence_of						:title, :message, :image, :image_one
	has_many									:votes
end
