Rails.application.routes.draw do
  namespace :admin do
    get 'sessions/new'
    get 'sessions/create'
  end
  namespace :admin do
    get 'comments/new'
    get 'comments/create'
    get 'comments/edit'
    get 'comments/upate'
    get 'comments/destroy'
    get 'comments/index'
    get 'comments/show'
  end
  namespace :admin do
    get 'categories/new'
    get 'categories/create'
    get 'categories/edit'
    get 'categories/upate'
    get 'categories/destroy'
    get 'categories/index'
    get 'categories/show'
  end
  namespace :admin do
    get 'posts/new'
    get 'posts/create'
    get 'posts/edit'
    get 'posts/upate'
    get 'posts/destroy'
    get 'posts/index'
    get 'posts/show'
  end
  namespace :admin do
    get 'users/new'
    get 'users/create'
    get 'users/edit'
    get 'users/upate'
    get 'users/destroy'
    get 'users/index'
    get 'users/show'
  end
  get 'about' => 'about#index'
  get 'contacts' => 'contacts#new'
  get 'contacts/create'
  get 'comments/new'
  get 'categories/show'
  get 'posts/index'
  get 'posts/show'

  resources :posts, :categories, :comments

  namespace :admin do
    resources :posts, :categories, :comments, :users
  end
  root 'posts#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
