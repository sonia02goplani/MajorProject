class Organization::OrganizationsController < Organization::BaseController
  def dashboard
    @post = ProblemPost.page(params[:page]).per(3)
  end
end
