Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :organisations do 
    resources :jobs
  end

  resources :users, only: [:show] do
    resources :jobs
  end

  resources :users do
    resources :endorsements, only: [:new, :create, :destroy]
  end

end
