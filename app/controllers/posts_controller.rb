class PostsController < ApplicationController

before_action :set_post, :only => [:show, :edit, :update, :destroy]

def index
  @posts = Post.page(params[:page]).per(5)
end

def show

end

def new
  @post = Post.new
end

def create
  @post = Post.new(post_params)

  if @post.save
    flash[:notice] = "Post was successfully created"
    redirect_to :action => :index
  else
    render :action => :new
  end
end

def edit

end

def update
  if @post.update(post_params)
    flash[:notice] = "Update successfully"
    redirect_to :action => :index
  else
    render :action => :edit
  end
end

def destroy
  @post.destroy
  redirect_to posts_path :action => :index
  flash[:alert] = "The post was successfully deleted"
end

private

def set_post
  @post = Post.find(params[:id])
end

def post_params
  params.require(:post).permit(:title, :content)
end




end
