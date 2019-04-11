class PostsController < ApplicationController

  # show post
  def show
    @post = Post.find(params[:id])
  end

  # create post
  def create
    Post.create(post_params)

    redirect_to root_path
  end

  # delete a post
  def destroy
    @post = current_user.posts.find(params[:id])
    @post.destroy

    redirect_to user_path(current_user)
  end

  private

  def post_params
    params.require(:post).permit(:description, :image, :user_id)
  end
end
