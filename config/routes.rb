Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "users/registrations" }
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end
  root 'home#home'

  resources :problem_categories do
    resources :problem_posts, only: [:new ,:create]
  end
  resources :problem_posts do
    resources :problem_comments, only: [:new ,:create]
  end

  resources :problem_posts ,only: [:index ,:show,:edit,:update ,:destroy]

  namespace :organization, path: '' do
    resources :organizations, only: [] do
      get :dashboard, on: :collection
    end
  end

  namespace :volunteer, path: '' do
    resources :volunteers, only: [] do
      get :dashboard, on: :collection
    end
  end
  

  get 'get_state_for_country/:country', to: 'home#get_state_for_country'
end
