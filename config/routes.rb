Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'

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
  resources :users
  resources :account_activations, only: [:edit]

end
