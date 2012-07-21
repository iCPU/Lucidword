Lucidword::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  root :to => "home#index"

  authenticated :user do
    root :to => 'home#index'
  end
  devise_for :users
  resources :users, :only => [:show, :index]

  resources :beginnings

  resources :endings do
    member do 
      post :vote_up
      post :vote_down
    end
  end

  resources :comments

end
