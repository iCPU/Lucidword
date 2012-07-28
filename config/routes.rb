Lucidword::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  root :to => "home#index"

  authenticated :user do
    root :to => 'home#index'
  end
  devise_for :users
  resources :users, :only => [:show, :index]

  resources :beginnings do
    member do
      get 'ereader'
    end
  end
 
  resources :endings do
    member do 
      post :praise
      post :unpraise
      post :bookmark
      post :unbookmark
    end
  end

  resources :comments

end
