class VotesController < ApplicationController

	def create
		@vote=Vote.new(vote_params)

		if @vote.save
			redirect_to polls_path, :notice => "Thanks!!You have voted"
		else
			render "new"
		end
	end

	private
	def vote_params
		params.require(:vote).permit(:user_id, :textpoll_id, :picpoll_id, :count)
	end				
end
