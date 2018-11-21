class PagesController < ApplicationController
  def home
    @hobbies = Hobby.all

  end

  def about
    @posts = Post.all
  end

  def contact
    logger.info '+++ Example +++'
    redirect_to root_path,  notice: 'Fuck you nigga!'
  end
end
