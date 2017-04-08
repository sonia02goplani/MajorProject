class ProblemPostsController < ApplicationController
layout "problem_post" , only: [:new,:index,:show]

def show
	@post = ProblemPost.find(params[:id])
end
def index
	@post = ProblemPost.all
end	

def new
  @category=ProblemCategory.find(params[:problem_category_id])
  @post=ProblemPost.new
    
	
end


def create 

   @categories = ProblemCategory.find(params[:category_id])
   @post=ProblemCategory.new(post_param)
   @post.category_id = params[:category_id] 
  
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

