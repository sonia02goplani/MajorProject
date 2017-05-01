class HomeController < ApplicationController
layout "problem_category" , only: [:home]
def home
	@categories=ProblemCategory.all
	 @post = ProblemPost.page(params[:page]).per(4)
	 @events=EventPortfolio.page(params[:page]).per(10)
	 @Ievents=Event.all
end
  def get_state_for_country
    country_object = ISO3166::Country.find_country_by_name(params[:country])
    states = country_object.states.map{|s| [s[1]['name'], s[1]['name']]}
    render json: { success: true, data: states }
  end
end
