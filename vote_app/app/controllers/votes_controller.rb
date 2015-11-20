class VotesController < ApplicationController
	def index
		@vote =Vote.all
	end

	def show
		@vote =Vote.find(params[:id])
	end

	def new
		@vote =Vote.new
	end

	def create
		@vote =Vote.new(vot_params)

		if @vote.save
			redirect_to polls_path, :notice => "You have voted"
		else
			redirect_to polls_path
		end
	end

	def update
		@vote = Vote.new(vot_params)
		if @vote.save
			redirect_to polls_path, :notice => "You have voted"
		else
			redirect_to polls_path
		end
	end

	private

	def vot_params
		params.require(:vote).permit(:vote_count, :poll_id )																							
	end
end
