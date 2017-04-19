class Organization::OrganizationsController < Organization::BaseController
	layout "after_login" 
  def dashboard
@post = ProblemPost.page(params[:page]).per(3)
  end


end
