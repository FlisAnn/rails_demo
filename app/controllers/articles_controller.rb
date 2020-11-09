class ArticlesController < ApplicationController
  def index
    @articles = Article.all #goes and gets all articles from db. AFter it is fetched it should send it to views to disply them
  end

end
