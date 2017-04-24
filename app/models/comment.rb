class Comment < ActiveRecord::Base
	belongs_to :post , class_name: "ProblemPost", foreign_key: "post_id" 
    

end
