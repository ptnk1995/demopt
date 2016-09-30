class HomeController < ApplicationController
  def home
    @post = Micropost.all
    @posts = Micropost.paginate(page: params[:page], :per_page => 3)
    if logged_in?
    @micropost  = current_user.microposts.build
    @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

end
