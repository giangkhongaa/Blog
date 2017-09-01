Rails.application.routes.draw do
  get 'comments/create'

  get 'comments/destroy'

  get 'comments/edit'

  devise_for :users
  resources :statuses do
  	resources :comments
  end
  root 'statuses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
