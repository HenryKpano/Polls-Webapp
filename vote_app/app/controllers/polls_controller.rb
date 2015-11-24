class PollsController < ApplicationController
 	
before_action :authenticate_user!, except: [:index, :show]

def index
	@polls =Poll.all
end

def new
	@poll = current_user.polls.build
end

def picpol
	@poll = Poll.new
end

def create
	@poll =current_user.polls.build(poll_params)

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
	params.require(:poll).permit(:title, :message, :image, :image_one, :topic, :mesage)																							
end

end

