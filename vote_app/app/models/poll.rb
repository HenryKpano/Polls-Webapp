class Poll < ActiveRecord::Base
	has_attached_file :image, styles: {medium: "300*300", thumb: "150*150#"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/ 

	has_attached_file :image_one, styles: {medium: "300*300", thumb: "150*150#"}
	validates_attachment_content_type :image_one, content_type: /\Aimage\/.*\Z/ 

end
