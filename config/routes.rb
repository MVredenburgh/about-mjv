Rails.application.routes.draw do
  root	                    'static_pages#home'
  get 'help'             => 'static_pages#help'
  get 'about'            => 'static_pages#about'
  get 'education'        => 'static_pages#education'
  get 'work_experience'  => 'static_pages#work_experience'
  get 'related_courses'  => 'static_pages#related_courses'
  get 'languages'        => 'static_pages#languages'

end
