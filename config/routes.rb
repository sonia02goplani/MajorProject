Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :problem_categories do
    resources :problem_posts, only: [:new ,:create]
  end

  resources :problem_posts ,only: [:show,:edit,:update ,:destroy]

  resources :home, only: [] do
    get :about_us, on: :collection
    get :sample_post, on: :collection
    get :contact_us, on: :collection
  end
end
