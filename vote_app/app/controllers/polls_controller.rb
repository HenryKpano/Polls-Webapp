class PollsController < ApplicationController

def index
	@poll =Poll.all
end

def new
	@poll = Poll.new
end

def picpol
	@poll = Poll.new
end

def create
	@poll =Poll.new(poll_params)

		if @poll.save
			redirect_to polls_path, :notice => "Your new poll has been created"
		else
			render "new"
		end
end

def edit
		@poll =Poll.find(params[:id])
	end

def show
	@poll =Poll.find(params[:id])
end

def destroy
	@poll =Poll.find(params[:id])
	@poll.destroy
	redirect_to polls_path, :notice => "Your poll has been deleted"
end

def update
		@poll =Poll.find(params[:id])
		if @poll.update_attributes(poll_params)
			redirect_to polls_path, :notice => "Your article has been updated"
		else
			render "edit"
		end
	end

private

def poll_params
	params.require(:poll).permit(:title, :message, :image, :image_one)																							
end

end

