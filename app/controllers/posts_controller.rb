class PostsController < ApplicationController
  def index
    @post_items = Post.all
  end
  def cooking
    @cooking_post_items = Post.baking
  end

  def new
    @post = Post.new
    3.times { @post.skills.build }
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :body, skills_attributes:[:name]))

    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_path, notice: 'Post was successfully created' }
      else
        format.html { render :new }
      end
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    respond_to do |format|
      if @post.update(params.require(:post).permit(:title, :body))
        format.html { redirect_to posts_path, notice: 'Post was updated.' }
      else
        format.html { render :edit }
      end
    end
  end

end
