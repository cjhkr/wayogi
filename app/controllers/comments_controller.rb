class CommentsController < ApplicationController
    def create
        @comment=Comment.new
        @comment.post_id=params[:id]
        @comment.content=params[:content]
        @comment.save
        @comments=Comment.all.reverse
    end
    
    
    private
    
    def comment_params
       params.permit(:content) 
    end
end
