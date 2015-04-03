Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root :to => 'posts#home'

  resources :posts do
    resources :comments, :except => [:show, :index]
  end

  resources :users do
    resources :posts
  end
end
