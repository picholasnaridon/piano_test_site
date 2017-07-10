class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to( @topic )
    else
      render 'new'
    end
  end

  def destroy
    @topic = Topic.friendly.find(params[:id])
    @topic.destroy
    flash[:notice] = 'Topic has been deleted'
    redirect_to topics_path
  end

  def show
    @topic = Topic.friendly.find(params[:id])
    @comment = Article.new
    @articles = @topic.articles
  end

  private

  def topic_params
    params.require(:topic).permit(:name)
  end
end
