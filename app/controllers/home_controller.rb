class HomeController < ApplicationController
    def index
        @post = Post.all
        
        @select = Post.where(:title => params[:search])
        
        
    end
    
    def create
        @post = Post.new
        @post.title = params[:post_title]
        @post.content = params[:content_title]
        @post.save
        
        redirect_to '/home/index'
    end
    
    def delete
        delete_post = Post.find(params[:post_id])
        delete_post.destroy
        
        redirect_to '/'
    end
    
    def show
        @post = Post.find(params[:post_id])
        @comment = @post.comments
        
    end
    
end
