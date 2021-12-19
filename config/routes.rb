Rails.application.routes.draw do
  resources :photos
  resources :products
  devise_for :users
  root 'home#index'
  get 'article/article_about_us'
  get 'checkout/checkout'
  get 'auth/create_user'
  devise_scope :user do
    get 'auth/login', :to => 'devise/sessions#new'
    get 'auth/logout', :to => 'devise/sessions#destroy'
    get 'auth/user', :to => 'devise/registrations#edit'
  end
  get 'cart/cart'
  get 'search/search_grid'
  get 'search/search'
  get 'category/category_grid'
  get 'category/category'
  get 'product/product'
  get 'home/index'
end
