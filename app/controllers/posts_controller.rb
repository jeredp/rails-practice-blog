class PostsController < ApplicationController

  def create
    params.permit!
    @post = Post.new(params[:post])

    if @post.save
      redirect_to root_path, notice: "Post successfully created"
      return
    end

    flash.now[:alert] = "Failed to create post"
  end

  def update
    params.permit!
    @post = Post.find params[:id]
    @post.update_attributes params[:post]
    redirect_to root_path
  end
end
