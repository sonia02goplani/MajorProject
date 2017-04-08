class ProblemCategoriesController < ApplicationController
layout "problem_category" , only: [:home, :index]
	def home		
	end
	def index
		@categories=ProblemCategory.all
	end
	def new
		@category=ProblemCategory.new
	end	

end

