class ProblemCategory < ActiveRecord::Base
	has_many :post_categories
	has_many :problem_posts , :through => : post_categories
end
