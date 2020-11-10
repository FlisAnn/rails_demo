class ArticlesController < ApplicationController
  def index
    @articles = Article.all #goes and gets all articles from db. After it is fetched it should send it to views to disply them
  end
  
  def show
    @article = Article.find(params[:id]) 
  end
end
