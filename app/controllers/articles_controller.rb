class ArticlesController < ApplicationController
  def index
    @articles = Article.all #goes and gets all articles from db. After it is fetched it should send it to views to disply them
  end
  
  def show
    @article = Article.find(params[:id]) 
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)  
  end

  private

  def article_params # only allow title and content. Nothing is ok
    params.require(:article).permit(:title, :content)
  end
end
