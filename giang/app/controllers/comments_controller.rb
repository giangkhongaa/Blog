class CommentsController < ApplicationController
  def create
    @status = Status.find(params[:status_id])
    @comment= @status.comments.build(comment_params)
  	@comment.save

  	redirect_to @status
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    
    redirect_to Status.find(params[:status_id])
  end

  def edit
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def comment_params
      params.require(:comment).permit(:status_id, :text)
    end

end
