class ProblemPostsController < ApplicationController
# layout "problem_post" , only: [:new,:index,:show]

def show
	@post = ProblemPost.find(params[:id])
end
def index
	@post = ProblemPost.all
end	

def new
	@post=ProblemPost.new
	@categories=ProblemCategory.all.map{ |c| 
		[c.name_category,c.id]
	}
	
end


def create 

   @post = ProblemPost.new(post_params) 
   @post.category_id = params[:problem_category_id] 
  
   respond_to do |format|
     
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
private
def post_params
	params.require(:post).permit(:title,:category_name,:category_id,:content ,:name)
end
end

