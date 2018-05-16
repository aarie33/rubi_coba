class PostController < ApplicationController
  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    
    redirect_to "/post/index"
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    
    redirect_to "/post/index"
  end

  def update
    @post = Post.find(params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    
    redirect_to "/post/show/" + params[:id]
  end

  def new
  end
end
