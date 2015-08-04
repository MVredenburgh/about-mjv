class StaticPagesController < ApplicationController

  def home
    @micropost = current_user.microposts.build if logged_in?
    @feed_items = current_user.feed.paginate(page: params[:page])
  end

  def help
  end

  def about
  end

  def education
  end

  def work_experience
  end

  def related_courses
  end

  def languages
  end

end