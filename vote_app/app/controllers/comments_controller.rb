class CommentsController < ApplicationController
	
	def create
		@comment =Comment.new(com_params)

		respond_to do |format|
		if @comment.save
			format.html {redirect_to polls_path, notice: 'Comment was successfully created'}
			format.json {render json: @comment, status: :created, location: @comment}
		else
			format.html {render action: "new"}
			format.json {render json: @comment.errors, status: :unprocessable_entity}
		end
		end
	end
	def com_params
	params.require(:comment).permit(:comment, :poll_id)																							
end
end
