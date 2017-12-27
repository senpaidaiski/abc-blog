Rails.application.routes.draw do
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
    root to: "posts#index"
 	 resources :posts do
  	resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end