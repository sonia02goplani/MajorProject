class ProblemPost < ActiveRecord::Base
	has_many :post_categories
	has many :problem_categories , :through => :post_categories
end
