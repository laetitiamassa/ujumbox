Ujumbox::Application.routes.draw do
  resources :ujumbes

  root :to => "ujumbes#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end