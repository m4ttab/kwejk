class CommentsController < ApplicationController

	def create
		@comment = Comment.new(comment_params)
		@comment.mem_id = params[:mem_id]

		@comment.save

		redirect_to mem_path(@comment.mem)
	end

	def comment_params
		params.require(:comment).permit(:nick, :body)
	end
end
