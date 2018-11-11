class PagesController < ApplicationController
  def home
    @hobbies = Hobby.all

  end

  def about
    @posts = Post.all
  end

  def contact
  end
end
