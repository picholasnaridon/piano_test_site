class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(article_params)
  end

  def new
    @article = Article.new
  end

  private

  def article_params
    params.require(:article).permit(:title, :author, :body, :published, :tags)
  end
end
