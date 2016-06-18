class ArticlesController < ApplicationController
layout 'clean_blog', only: [ :new ]
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(articles_params)

    if @article.save
      flash[:notice] = 'Article has been created.'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

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
    params.require(:article).permit(:title, :body)
  end
end
