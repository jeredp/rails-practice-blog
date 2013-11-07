class FeedController < ApplicationController
  def index
    @posts = Post.order(:created_at).all
    @post = Post.new
  end
end
