class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:show ]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(articles_params)

    if @article.save
      flash[:alert] = 'Article has been created.'
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
    @comment = @article.comments.build
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.published?
      @article.published_at = Time.zone.now.strftime("%m/%d/%Y")
    end
    if @article.update(articles_params)

      flash[:notice] = 'Article has been updated.'
      redirect_to @article
    else
      flash.now[:alert] = 'Article was not updated.'
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])

    @article.destroy
    flash[:alert] = 'Article has been deleted.'
    redirect_to root_path
  end

  private

  def articles_params
    params.require(:article).permit(:title, :body, :published, :sub_title, :published_at, :image)
  end
end
