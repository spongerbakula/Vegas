class CommentsController < ApplicationController
	before_filter :authenticate_user!

# http_basic_authenticate_with :name => "guest", :password => "1234", :

def create
	@post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    redirect_to post_path(@post)
  end

def destroy
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.find(params[:id])
  
    @comment.destroy
    redirect_to post_path(@post)
  end
end
