class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @project = Project.find(params[:project_id])
    @post = Post.new(post_params)
    @post.user = current_user
    @post.project = @project
    if @post.save
      redirect_to project_path(@project)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:content, :project)
  end
end
