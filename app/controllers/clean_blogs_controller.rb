class CleanBlogsController < ApplicationController
	def index
		@articles = Article.limit(5).order(created_at: :desc)
	end

	def about
	end

	def contact
	end
end
