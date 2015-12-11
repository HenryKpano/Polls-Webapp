class TextpollsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@textpolls= Textpoll.all.reverse
	end

	def new
		@textpoll=current_user.textpolls.build
	end

	def show
		@textpoll=Textpoll.find(params[:id])
	end

	def create
		@textpoll=current_user.textpolls.build(text_params)

		if @textpoll.save
			redirect_to @textpoll, :notice => "Thanks!!Your poll has been created"
		else
			render "new"
		end
	end

	def update
		@textpoll =Textpoll.find(params[:id])
		if @textpoll.update_attributes(text_params)
			redirect_to @textpoll, :notice => "Your article has been updated"
		else
			render "edit"
		end
	end

	# def destroy
	# 	@textpoll =Textpoll.find(params[:id])
	# 	@textpoll.destroy
	# 	redirect_to polls_path, :notice => "Your poll has been deleted"
	# end

	# def edit
	# 	@textpoll=Textpoll.find(params[:id])
	# end

	private
	def text_params
		params.require(:textpoll).permit(:user_id, :title, :first_msg, :second_msg)
	end
end
