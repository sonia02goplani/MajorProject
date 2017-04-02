class ProblemPost < ActiveRecord::Base
belongs_to :category , class_name: "ProblemCategory", foreign_key: "category_id" 
end
