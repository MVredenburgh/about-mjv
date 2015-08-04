class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
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