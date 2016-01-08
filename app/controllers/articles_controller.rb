class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end
	
	def new
		@article = Article.new
	end

	def create		
		@article = Article.new(article_params)
		if @article.save
			flash[:notice] = 'New Article Saved'
		end
	end

	private

	def article_params
		params.require(:article).permi(:title, :description)
	end
end