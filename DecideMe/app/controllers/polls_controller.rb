class PollsController < ApplicationController
	def index
		@textpolls= Textpoll.all.reverse
		@picpolls=Picpoll.all.reverse
	end
end
