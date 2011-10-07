class CommentsController < ApplicationController
	def create
    @vote = Vote.find(params[:vote_id])
    @comment = @vote.comments.create(params[:comment])
		@comment.user_id=current_user.id
		@comment.save!
    redirect_to vote_path(@vote)
  end
end
