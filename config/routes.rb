Rails.application.routes.draw do
  root	                    'static_pages#home'
  get 'help'             => 'static_pages#help'
  get 'about'            => 'static_pages#about'
  get 'contact'          => 'static_pages#contact'
  get 'education'        => 'static_pages#education'
  get 'work_experience'  => 'static_pages#work_experience'
  get 'related_courses'  => 'static_pages#related_courses'
  get 'languages'        => 'static_pages#languages'
  get 'signup'		 => 'users#new'
  get    'login'  	 => 'sessions#new'
  post   'login'  	 => 'sessions#create'
  delete 'logout' 	 => 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
end
