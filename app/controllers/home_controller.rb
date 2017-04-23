class HomeController < ApplicationController
  def index
  end
  def news
    @news = News.all
  end
  def addnews
    @news = News.new
    @news.title = params[:title]
    @news.content = params[:contentNews]
    @news.image = params[:image]
    @news.save!
    redirect_to :back
  end

  def addUsername
    @myUser = UserDevise.find(params[:id])
    @myUser.update_attribute(:username, params[:newUsername])
    redirect_to :back
  end
  def about
  end
end
