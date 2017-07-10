class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create
    @topic = Topic.friendly.find(params[:topic_id])
    @article = @topic.articles.create(article_params)
    if @article.save
      redirect_to( @topic )
    else
      redirect_to (@topic)
    end
  end

  def edit
    @topic = Topic.friendly.find(params[:topic_id])
    @article = Article.find(params[:id])
  end

  def new
    @topic = Topic.friendly.find(params[:topic_id])
    @article = Article.new
  end

  def update
    @article = Article.find(params[:id])
    @topic = Topic.find(params[:topic_id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def show
    @article = Article.find(params[:id])
    @topic = Topic.friendly.find(params[:topic_id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:notice] = 'Article has been deleted'
    redirect_to topics_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :author, :body, :published)
  end
end
