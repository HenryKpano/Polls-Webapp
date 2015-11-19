class VotesController < ApplicationController
	def index
		@vote =Vote.all
		@poll =Poll.all
	end

	def show
		@vote =Vote.find(params[:id])
	end

	def new
		@vote =Vote.all
	end

	def create
		@vote =Vote.new(vot_params)

		if @vote.save
			redirect_to polls_path, :notice => "Your have voted"
		else
			redirect_to polls_path
		end
	end

	private

	def vot_params
		params.require(:vote).permit(:vote_count )																							
	end
end
