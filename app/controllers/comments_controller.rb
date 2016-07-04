class CommentsController < ApplicationController
  before_action :set_article

  def create
    @comment = @article.comments.create(comment_params)
    if @comment.save
      flash[ :notice ] = 'Comment has been created.'
      redirect_to  article_path(@article,)
    else
      flash.now[ :alert ] = 'Comment was not created.'
      render @article
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
