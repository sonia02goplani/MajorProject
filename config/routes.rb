Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "users/registrations" }
  root 'problem_categories#home'

  resources :problem_categories do
    resources :problem_posts, only: [:new ,:create]
  end

  resources :problem_posts ,only: [:show,:edit,:update ,:destroy]

end
