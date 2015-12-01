class PicpollsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	def index
		@picpolls= Picpoll.all.reverse
	end

	def new
		@picpoll=current_user.picpolls.build
	end

	def show
		@picpoll=Picpoll.find(params[:id])
	end

	def create
		@picpoll=current_user.picpolls.build(pic_params)
		respond_to do |format|
		if @picpoll.save
			format.html {redirect_to @picpoll, :notice => "Thanks!!Your poll has been created"}
		else
			render "new"
		end
	end
	end

	def update
		@picpoll =Picpoll.find(params[:id])
		if @picpoll.update_attributes(pic_params)
			redirect_to @picpoll, :notice => "Your article has been updated"
		else
			render "edit"
		end
	end

	def destroy
		@picpoll =Picpoll.find(params[:id])
		@picpoll.destroy
		redirect_to polls_path, :notice => "Your poll has been deleted"
	end

	def edit
		@picpoll=Picpoll.find(params[:id])
	end

	private

	def pic_params
		params.require(:picpoll).permit(:user_id, :title, :message, :image, :image_one)
	end
end
