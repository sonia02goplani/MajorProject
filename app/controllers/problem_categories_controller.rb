class ProblemCategoriesController < ApplicationController
layout "problem_category" , only: [:home, :index]
<<<<<<< HEAD
def home
	@categories=ProblemCategory.all
=======
	def home		
>>>>>>> changes/changes
	end
	def index
		@categories=ProblemCategory.all
	end
	def new
		@category=ProblemCategory.new
	end	

end

