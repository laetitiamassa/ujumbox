Ujumbox::Application.routes.draw do
  resources :ujumbes

  root :to => "ujumbes#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  
  resources :users do
  	member do
      get :follow
      get :unfollow
    end
  end

end