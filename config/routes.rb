Rails.application.routes.draw do
  resources :majors
  resources :departments
  resources :professors
	root 'posts#index'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
