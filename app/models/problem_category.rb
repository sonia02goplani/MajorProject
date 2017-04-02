class ProblemCategory < ActiveRecord::Base
has_many :problem_posts , class_name: "ProblemPost"
end
