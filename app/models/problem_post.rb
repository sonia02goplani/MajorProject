class ProblemPost < ActiveRecord::Base
belongs_to :category , class_name: "ProblemCategory", foreign_key: "category_id" 
has_many :comments , class_name: "Comments"
end
