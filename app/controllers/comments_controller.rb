class CommentsController < ApplicationController
  before_action :set_article

  def create
    @comment = @article.comments.build(comment_params)
    if @comment.save
      flash[ :notice ] = 'Comment has been created.'
      redirect_to @article
    else
      flash.now[ :alert ] = 'Comment was not created.'
      redirect_to article_path(@article)
    end
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end

  def comment_params
    params.require(:comment).permit(:name, :body)
  end
end
