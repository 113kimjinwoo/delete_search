class CommentController < ApplicationController
    def create
        @comment = Comment.new
        @comment.content = params[:comment_content]
        @comment.post_id = params[:post_id]
        @comment.save
        
        redirect_to "/home/show/#{params[:post_id]}"
    end

    def destroy
        @comment = Comment.find(params[:comment_id])
        @comment.destroy
        
        redirect_to '/'
        
        
    end
end
