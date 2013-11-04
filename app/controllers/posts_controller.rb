class PostsController < ApplicationController

  def create
    params.permit!
    @post = Post.new(params[:post])

    if @post.save
      redirect_to root_path, notice: "Post successfully created"
      binding.pry
      return
    end

    flash.now[:alert] = "Failed to create post"
  end
end
