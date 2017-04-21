class ProblemCategoriesController < ApplicationController
layout "problem_category" , only: [:home]
layout "problem_post" , only: [:show]

def home
	@categories=ProblemCategory.all
end
	def index
		@categories=ProblemCategory.all
	end
	def new
		@category=ProblemCategory.new
	end	
     def show
        @category = ProblemCategory.find(params[:id])
        @title=@category.name_category
        @posts = @category.problem_posts.page(params[:page]).per(5)
    end
end

