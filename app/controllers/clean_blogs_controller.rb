class CleanBlogsController < ApplicationController
	def index
		@articles = Article.all
	end

	def about
	end

	def post
	end

	def contact
	end
end
