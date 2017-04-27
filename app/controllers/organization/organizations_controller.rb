class Organization::OrganizationsController < Organization::BaseController
	layout "after_login" 
  def dashboard
if user_signed_in? && current_user.organization?
@volunteers=current_user.organization.volunteers.page(params[:page]).per(7) 
end	
@post = ProblemPost.page(params[:page]).per(5)


  end


end
