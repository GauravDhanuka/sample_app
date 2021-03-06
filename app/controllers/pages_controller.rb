class PagesController < ApplicationController
  def home
  	@title = 'Home'
  	@micropost = current_user.microposts.build if logged_in?
    @feed_items = current_user.feed.paginate(page: params[:page]) if logged_in?
  end

  def contact
  	@title = 'Contact'
  end

  def about
  	@title = 'About'
  end

end
