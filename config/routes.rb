Ujumbox::Application.routes.draw do
  resources :acts
  resources :ujumbes

  root :to => "ujumbes#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  
  resources :users do
  	member do
      get :follow
      get :unfollow
    end
  end

  resources :ujumbes do
    member do
      get :follow
      get :unfollow
    end
  end

  resources :ujumbes do
    resources :acts
  end

  get "about" => "about#show"
  get "politics" => "home#politics"
  get "citizen" => "home#citizen"
  get "rosemefalessi" => "users#show", defaults: { id: "10" }

end